import{isFunction as t,isCubicBezier as i,noopReturn as e,defaults as s,isEasingGenerator as a,isEasingList as n,interpolate as r}from"@motionone/utils";import{cubicBezier as o,steps as h}from"@motionone/easing";const l={ease:o(.25,.1,.25,1),"ease-in":o(.42,0,1,1),"ease-in-out":o(.42,0,.58,1),"ease-out":o(0,0,.58,1)};const u=/\((.*?)\)/;function getEasingFunction(s){if(t(s))return s;if(i(s))return o(...s);if(l[s])return l[s];if(s.startsWith("steps")){const t=u.exec(s);if(t){const i=t[1].split(",");return h(parseFloat(i[0]),i[1].trim())}}return e}class Animation{constructor(t,i=[0,1],{easing:o,duration:h=s.duration,delay:l=s.delay,endDelay:u=s.endDelay,repeat:m=s.repeat,offset:c,direction:p="normal",autoplay:d=true}={}){this.startTime=null;this.rate=1;this.t=0;this.cancelTimestamp=null;this.easing=e;this.duration=0;this.totalDuration=0;this.repeat=0;this.playState="idle";this.finished=new Promise(((t,i)=>{this.resolve=t;this.reject=i}));o=o||s.easing;if(a(o)){const t=o.createAnimation(i);o=t.easing;i=t.keyframes||i;h=t.duration||h}this.repeat=m;this.easing=n(o)?e:getEasingFunction(o);this.updateDuration(h);const f=r(i,c,n(o)?o.map(getEasingFunction):e);this.tick=i=>{var e;l;let s=0;s=this.pauseTime!==void 0?this.pauseTime:(i-this.startTime)*this.rate;this.t=s;s/=1e3;s=Math.max(s-l,0);this.playState==="finished"&&this.pauseTime===void 0&&(s=this.totalDuration);const a=s/this.duration;let n=Math.floor(a);let r=a%1;!r&&a>=1&&(r=1);r===1&&n--;const o=n%2;(p==="reverse"||p==="alternate"&&o||p==="alternate-reverse"&&!o)&&(r=1-r);const h=s>=this.totalDuration?1:Math.min(r,1);const m=f(this.easing(h));t(m);const c=this.pauseTime===void 0&&(this.playState==="finished"||s>=this.totalDuration+u);if(c){this.playState="finished";(e=this.resolve)===null||e===void 0?void 0:e.call(this,m)}else this.playState!=="idle"&&(this.frameRequestId=requestAnimationFrame(this.tick))};d&&this.play()}play(){const t=performance.now();this.playState="running";this.pauseTime!==void 0?this.startTime=t-this.pauseTime:this.startTime||(this.startTime=t);this.cancelTimestamp=this.startTime;this.pauseTime=void 0;this.frameRequestId=requestAnimationFrame(this.tick)}pause(){this.playState="paused";this.pauseTime=this.t}finish(){this.playState="finished";this.tick(0)}stop(){var t;this.playState="idle";this.frameRequestId!==void 0&&cancelAnimationFrame(this.frameRequestId);(t=this.reject)===null||t===void 0?void 0:t.call(this,false)}cancel(){this.stop();this.tick(this.cancelTimestamp)}reverse(){this.rate*=-1}commitStyles(){}updateDuration(t){this.duration=t;this.totalDuration=t*(this.repeat+1)}get currentTime(){return this.t}set currentTime(t){this.pauseTime!==void 0||this.rate===0?this.pauseTime=t:this.startTime=performance.now()-t/this.rate}get playbackRate(){return this.rate}set playbackRate(t){this.rate=t}}export{Animation,getEasingFunction};

