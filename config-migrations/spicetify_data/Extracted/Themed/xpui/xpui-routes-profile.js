(("undefined"!=typeof self?self:global).webpackChunkopen=("undefined"!=typeof self?self:global).webpackChunkopen||[]).push([[499],{10106:(e,t,a)=>{"use strict";a.d(t,{T:()=>d});var r=a(27378),o=a.n(r),s=a(51117),n=a(74544),i=a(52774);const l="profile-editImage-imageContainer",c="profile-editImage-editImageButtonContainer",d=function({onClick:e,name:t,images:a,canEdit:r,placeholderType:d,shape:u=n.Kc.SQUARE}){const[m,g]=(0,n.RH)(a),p=(0,s.VO)(m,g)===s.KO.loaded;return o().createElement("div",{className:l,"data-testid":`${d}-image`},o().createElement(n.Oe,{loading:"eager",name:t,images:a,placeholderType:d,shape:u}),r&&o().createElement("div",{className:c},o().createElement(i.F,{overlay:p,onClick:e,rounded:u===n.Kc.CIRCLE})))}},71895:(e,t,a)=>{"use strict";a.r(t),a.d(t,{UserPage:()=>dt,default:()=>ut});var r=a(27378),o=a.n(r),s=a(41056),n=a(79308),i=a(60042),l=a.n(i);const c={xs:"(min-width: 0px)",xsOnly:"(min-width: 0px) and (max-width: 767px)",sm:"(min-width: 768px)",smOnly:"(min-width: 768px) and (max-width: 1023px)",md:"(min-width: 1024px)",mdOnly:"(min-width: 1024px) and (max-width: 1279px)",lg:"(min-width: 1280px)",lgOnly:"(min-width: 1280px) and (max-width: 1919px)",xl:"(min-width: 1920px)",container:"profile-userOverview-container",background:"profile-userOverview-background",overlay:"profile-userOverview-overlay",loggedOut:"profile-userOverview-loggedOut",historyButtons:"profile-userOverview-historyButtons",icon:"profile-userOverview-icon",button:"profile-userOverview-button",forward:"profile-userOverview-forward",topbarContentWrapper:"profile-userOverview-topbarContentWrapper",topbarContent:"profile-userOverview-topbarContent",UpgradeButton:"profile-userOverview-UpgradeButton",indicators:"profile-userOverview-indicators",contentArea:"profile-userOverview-contentArea",back:"profile-userOverview-back",user:"profile-userOverview-user",section:"profile-userOverview-section",subPage:"profile-userOverview-subPage",imageContainer:"profile-userOverview-imageContainer",topTrackSubPage:"profile-userOverview-topTrackSubPage",header:"profile-userOverview-header",title:"profile-userOverview-title"};var d=a(74544),u=a(58681),m=a(55157),g=a(71338),p=a(26713),f=a(61043),b=a(60858),v=a(1292),h=a(86883),y=a(11111),E=a(56958),k=a(74139),O=a(54646),P=a(28523),w=a(29467),I=a(47050),_=a(97065);const N=e=>({owner:{display_name:e.owner_name},name:e.name,uri:e.uri,description:e.followers_count?f.ag.get("user.followers",e.followers_count):"",images:[{url:(0,_.p)({imageUriOrUrl:e.image_url}),width:300,height:300}]});function S(e){return{uri:e.uri,name:e.name,images:[{url:e.image_url}]}}function D(e=[]){return e.map(S)}function x(e){return{name:e.name,uri:e.uri,images:[{url:e.image_url}]}}var R=a(393),A=a(53177),C=a(46036),T=a(90923),M=a(29685);const j={container:"profile-userEditDetails-container",content:"profile-userEditDetails-content",header:"profile-userEditDetails-header",closeBtn:"profile-userEditDetails-closeBtn",image:"profile-userEditDetails-image",imageLoadingContainer:"profile-userEditDetails-imageLoadingContainer",textElement:"profile-userEditDetails-textElement",name:"profile-userEditDetails-name",textElementLabel:"profile-userEditDetails-textElementLabel",labelText:"profile-userEditDetails-labelText",nameInput:"profile-userEditDetails-nameInput",save:"profile-userEditDetails-save",disclaimer:"profile-userEditDetails-disclaimer"};var U=a(95547),W=a(65526),H=a.n(W);function J(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,r)}return a}function L(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?J(Object(a),!0).forEach((function(t){H()(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):J(Object(a)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}function B(e){return{type:"setLoading",loading:e}}function $(e){return{type:"setMessage",message:e}}function F(e,t){switch(t.type){case"setName":return L(L({},e),{},{name:t.name});case"setMessage":return L(L({},e),{},{message:t.message,loading:!1});case"setLoading":return L(L({},e),{},{loading:t.loading,message:null});case"setImageData":return L(L({},e),{},{imageData:t.data,removeImage:!1});case"setImageToken":return L(L({},e),{},{imageToken:t.token,removeImage:!1});case"removeImage":return L(L({},e),{},{imageToken:void 0,imageData:void 0,image:void 0,removeImage:!0});default:return e}}var K=a(25467);const G={type:"error",get message(){return f.ag.get("user.edit-details.error.file-size-exceeded",4)}},Q={type:"error",get message(){return f.ag.get("user.edit-details.error.too-small",300,300)}},Z={type:"error",get message(){return f.ag.get("user.edit-details.error.missing-name")}},z={type:"error",get message(){return f.ag.get("user.edit-details.error.failed-to-save")}},V={type:"error",get message(){return f.ag.get("user.edit-details.error.file-upload-failed")}};var X=a(50434),q=a(57019);function Y(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,r)}return a}function ee(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?Y(Object(a),!0).forEach((function(t){H()(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):Y(Object(a)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}const te={paths:""},ae={encode(e,t=q.Writer.create()){for(const a of e.paths)t.uint32(10).string(a);return t},decode(e,t){const a=e instanceof Uint8Array?new q.Reader(e):e;let r=void 0===t?a.len:a.pos+t;const o=ee({},te);for(o.paths=[];a.pos<r;){const e=a.uint32();switch(e>>>3){case 1:o.paths.push(a.string());break;default:a.skipType(7&e)}}return o},fromJSON(e){const t=ee({},te);if(t.paths=[],void 0!==e.paths&&null!==e.paths)for(const a of e.paths)t.paths.push(String(a));return t},fromPartial(e){const t=ee({},te);if(t.paths=[],void 0!==e.paths&&null!==e.paths)for(const a of e.paths)t.paths.push(a);return t},toJSON(e){const t={};return e.paths?t.paths=e.paths.map((e=>e)):t.paths=[],t}};var re=a(24067),oe=a(30816).Buffer;function se(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,r)}return a}function ne(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?se(Object(a),!0).forEach((function(t){H()(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):se(Object(a)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}const ie={value:0},le={value:!1},ce={value:""};const de={encode:(e,t=q.Writer.create())=>(t.uint32(8).int32(e.value),t),decode(e,t){const a=e instanceof Uint8Array?new q.Reader(e):e;let r=void 0===t?a.len:a.pos+t;const o=ne({},ie);for(;a.pos<r;){const e=a.uint32();switch(e>>>3){case 1:o.value=a.int32();break;default:a.skipType(7&e)}}return o},fromJSON(e){const t=ne({},ie);return void 0!==e.value&&null!==e.value?t.value=Number(e.value):t.value=0,t},fromPartial(e){const t=ne({},ie);return void 0!==e.value&&null!==e.value?t.value=e.value:t.value=0,t},toJSON(e){const t={};return void 0!==e.value&&(t.value=e.value),t}},ue={encode:(e,t=q.Writer.create())=>(t.uint32(8).bool(e.value),t),decode(e,t){const a=e instanceof Uint8Array?new q.Reader(e):e;let r=void 0===t?a.len:a.pos+t;const o=ne({},le);for(;a.pos<r;){const e=a.uint32();switch(e>>>3){case 1:o.value=a.bool();break;default:a.skipType(7&e)}}return o},fromJSON(e){const t=ne({},le);return void 0!==e.value&&null!==e.value?t.value=Boolean(e.value):t.value=!1,t},fromPartial(e){const t=ne({},le);return void 0!==e.value&&null!==e.value?t.value=e.value:t.value=!1,t},toJSON(e){const t={};return void 0!==e.value&&(t.value=e.value),t}},me={encode:(e,t=q.Writer.create())=>(t.uint32(10).string(e.value),t),decode(e,t){const a=e instanceof Uint8Array?new q.Reader(e):e;let r=void 0===t?a.len:a.pos+t;const o=ne({},ce);for(;a.pos<r;){const e=a.uint32();switch(e>>>3){case 1:o.value=a.string();break;default:a.skipType(7&e)}}return o},fromJSON(e){const t=ne({},ce);return void 0!==e.value&&null!==e.value?t.value=String(e.value):t.value="",t},fromPartial(e){const t=ne({},ce);return void 0!==e.value&&null!==e.value?t.value=e.value:t.value="",t},toJSON(e){const t={};return void 0!==e.value&&(t.value=e.value),t}};q.util.Long!==re&&(q.util.Long=re,(0,q.configure)());const ge=globalThis;ge.atob,ge.btoa;function pe(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,r)}return a}function fe(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?pe(Object(a),!0).forEach((function(t){H()(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):pe(Object(a)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}const be={maxWidth:0,maxHeight:0,url:""},ve={},he={},ye={encode:(e,t=q.Writer.create())=>(t.uint32(8).int32(e.maxWidth),t.uint32(16).int32(e.maxHeight),t.uint32(26).string(e.url),t),decode(e,t){const a=e instanceof Uint8Array?new q.Reader(e):e;let r=void 0===t?a.len:a.pos+t;const o=fe({},be);for(;a.pos<r;){const e=a.uint32();switch(e>>>3){case 1:o.maxWidth=a.int32();break;case 2:o.maxHeight=a.int32();break;case 3:o.url=a.string();break;default:a.skipType(7&e)}}return o},fromJSON(e){const t=fe({},be);return void 0!==e.maxWidth&&null!==e.maxWidth?t.maxWidth=Number(e.maxWidth):t.maxWidth=0,void 0!==e.maxHeight&&null!==e.maxHeight?t.maxHeight=Number(e.maxHeight):t.maxHeight=0,void 0!==e.url&&null!==e.url?t.url=String(e.url):t.url="",t},fromPartial(e){const t=fe({},be);return void 0!==e.maxWidth&&null!==e.maxWidth?t.maxWidth=e.maxWidth:t.maxWidth=0,void 0!==e.maxHeight&&null!==e.maxHeight?t.maxHeight=e.maxHeight:t.maxHeight=0,void 0!==e.url&&null!==e.url?t.url=e.url:t.url="",t},toJSON(e){const t={};return void 0!==e.maxWidth&&(t.maxWidth=e.maxWidth),void 0!==e.maxHeight&&(t.maxHeight=e.maxHeight),void 0!==e.url&&(t.url=e.url),t}},Ee={encode(e,t=q.Writer.create()){void 0!==e.username&&void 0!==e.username&&me.encode({value:e.username},t.uint32(10).fork()).ldelim(),void 0!==e.name&&void 0!==e.name&&me.encode({value:e.name},t.uint32(18).fork()).ldelim();for(const a of e.images)ye.encode(a,t.uint32(26).fork()).ldelim();return void 0!==e.verified&&void 0!==e.verified&&ue.encode({value:e.verified},t.uint32(34).fork()).ldelim(),void 0!==e.editProfileDisabled&&void 0!==e.editProfileDisabled&&ue.encode({value:e.editProfileDisabled},t.uint32(42).fork()).ldelim(),void 0!==e.reportAbuseDisabled&&void 0!==e.reportAbuseDisabled&&ue.encode({value:e.reportAbuseDisabled},t.uint32(50).fork()).ldelim(),void 0!==e.abuseReportedName&&void 0!==e.abuseReportedName&&ue.encode({value:e.abuseReportedName},t.uint32(58).fork()).ldelim(),void 0!==e.abuseReportedImage&&void 0!==e.abuseReportedImage&&ue.encode({value:e.abuseReportedImage},t.uint32(66).fork()).ldelim(),void 0!==e.hasSpotifyName&&void 0!==e.hasSpotifyName&&ue.encode({value:e.hasSpotifyName},t.uint32(74).fork()).ldelim(),void 0!==e.hasSpotifyImage&&void 0!==e.hasSpotifyImage&&ue.encode({value:e.hasSpotifyImage},t.uint32(82).fork()).ldelim(),void 0!==e.color&&void 0!==e.color&&de.encode({value:e.color},t.uint32(90).fork()).ldelim(),t},decode(e,t){const a=e instanceof Uint8Array?new q.Reader(e):e;let r=void 0===t?a.len:a.pos+t;const o=fe({},ve);for(o.images=[];a.pos<r;){const e=a.uint32();switch(e>>>3){case 1:o.username=me.decode(a,a.uint32()).value;break;case 2:o.name=me.decode(a,a.uint32()).value;break;case 3:o.images.push(ye.decode(a,a.uint32()));break;case 4:o.verified=ue.decode(a,a.uint32()).value;break;case 5:o.editProfileDisabled=ue.decode(a,a.uint32()).value;break;case 6:o.reportAbuseDisabled=ue.decode(a,a.uint32()).value;break;case 7:o.abuseReportedName=ue.decode(a,a.uint32()).value;break;case 8:o.abuseReportedImage=ue.decode(a,a.uint32()).value;break;case 9:o.hasSpotifyName=ue.decode(a,a.uint32()).value;break;case 10:o.hasSpotifyImage=ue.decode(a,a.uint32()).value;break;case 11:o.color=de.decode(a,a.uint32()).value;break;default:a.skipType(7&e)}}return o},fromJSON(e){const t=fe({},ve);if(t.images=[],void 0!==e.username&&null!==e.username?t.username=String(e.username):t.username=void 0,void 0!==e.name&&null!==e.name?t.name=String(e.name):t.name=void 0,void 0!==e.images&&null!==e.images)for(const a of e.images)t.images.push(ye.fromJSON(a));return void 0!==e.verified&&null!==e.verified?t.verified=Boolean(e.verified):t.verified=void 0,void 0!==e.editProfileDisabled&&null!==e.editProfileDisabled?t.editProfileDisabled=Boolean(e.editProfileDisabled):t.editProfileDisabled=void 0,void 0!==e.reportAbuseDisabled&&null!==e.reportAbuseDisabled?t.reportAbuseDisabled=Boolean(e.reportAbuseDisabled):t.reportAbuseDisabled=void 0,void 0!==e.abuseReportedName&&null!==e.abuseReportedName?t.abuseReportedName=Boolean(e.abuseReportedName):t.abuseReportedName=void 0,void 0!==e.abuseReportedImage&&null!==e.abuseReportedImage?t.abuseReportedImage=Boolean(e.abuseReportedImage):t.abuseReportedImage=void 0,void 0!==e.hasSpotifyName&&null!==e.hasSpotifyName?t.hasSpotifyName=Boolean(e.hasSpotifyName):t.hasSpotifyName=void 0,void 0!==e.hasSpotifyImage&&null!==e.hasSpotifyImage?t.hasSpotifyImage=Boolean(e.hasSpotifyImage):t.hasSpotifyImage=void 0,void 0!==e.color&&null!==e.color?t.color=Number(e.color):t.color=void 0,t},fromPartial(e){const t=fe({},ve);if(t.images=[],void 0!==e.username&&null!==e.username?t.username=e.username:t.username=void 0,void 0!==e.name&&null!==e.name?t.name=e.name:t.name=void 0,void 0!==e.images&&null!==e.images)for(const a of e.images)t.images.push(ye.fromPartial(a));return void 0!==e.verified&&null!==e.verified?t.verified=e.verified:t.verified=void 0,void 0!==e.editProfileDisabled&&null!==e.editProfileDisabled?t.editProfileDisabled=e.editProfileDisabled:t.editProfileDisabled=void 0,void 0!==e.reportAbuseDisabled&&null!==e.reportAbuseDisabled?t.reportAbuseDisabled=e.reportAbuseDisabled:t.reportAbuseDisabled=void 0,void 0!==e.abuseReportedName&&null!==e.abuseReportedName?t.abuseReportedName=e.abuseReportedName:t.abuseReportedName=void 0,void 0!==e.abuseReportedImage&&null!==e.abuseReportedImage?t.abuseReportedImage=e.abuseReportedImage:t.abuseReportedImage=void 0,void 0!==e.hasSpotifyName&&null!==e.hasSpotifyName?t.hasSpotifyName=e.hasSpotifyName:t.hasSpotifyName=void 0,void 0!==e.hasSpotifyImage&&null!==e.hasSpotifyImage?t.hasSpotifyImage=e.hasSpotifyImage:t.hasSpotifyImage=void 0,void 0!==e.color&&null!==e.color?t.color=e.color:t.color=void 0,t},toJSON(e){const t={};return void 0!==e.username&&(t.username=e.username),void 0!==e.name&&(t.name=e.name),e.images?t.images=e.images.map((e=>e?ye.toJSON(e):void 0)):t.images=[],void 0!==e.verified&&(t.verified=e.verified),void 0!==e.editProfileDisabled&&(t.editProfileDisabled=e.editProfileDisabled),void 0!==e.reportAbuseDisabled&&(t.reportAbuseDisabled=e.reportAbuseDisabled),void 0!==e.abuseReportedName&&(t.abuseReportedName=e.abuseReportedName),void 0!==e.abuseReportedImage&&(t.abuseReportedImage=e.abuseReportedImage),void 0!==e.hasSpotifyName&&(t.hasSpotifyName=e.hasSpotifyName),void 0!==e.hasSpotifyImage&&(t.hasSpotifyImage=e.hasSpotifyImage),void 0!==e.color&&(t.color=e.color),t}},ke={encode:(e,t=q.Writer.create())=>(void 0!==e.mask&&void 0!==e.mask&&ae.encode(e.mask,t.uint32(10).fork()).ldelim(),void 0!==e.userProfile&&void 0!==e.userProfile&&Ee.encode(e.userProfile,t.uint32(18).fork()).ldelim(),t),decode(e,t){const a=e instanceof Uint8Array?new q.Reader(e):e;let r=void 0===t?a.len:a.pos+t;const o=fe({},he);for(;a.pos<r;){const e=a.uint32();switch(e>>>3){case 1:o.mask=ae.decode(a,a.uint32());break;case 2:o.userProfile=Ee.decode(a,a.uint32());break;default:a.skipType(7&e)}}return o},fromJSON(e){const t=fe({},he);return void 0!==e.mask&&null!==e.mask?t.mask=ae.fromJSON(e.mask):t.mask=void 0,void 0!==e.userProfile&&null!==e.userProfile?t.userProfile=Ee.fromJSON(e.userProfile):t.userProfile=void 0,t},fromPartial(e){const t=fe({},he);return void 0!==e.mask&&null!==e.mask?t.mask=ae.fromPartial(e.mask):t.mask=void 0,void 0!==e.userProfile&&null!==e.userProfile?t.userProfile=Ee.fromPartial(e.userProfile):t.userProfile=void 0,t},toJSON(e){const t={};return void 0!==e.mask&&(t.mask=e.mask?ae.toJSON(e.mask):void 0),void 0!==e.userProfile&&(t.userProfile=e.userProfile?Ee.toJSON(e.userProfile):void 0),t}},Oe=`${X.XA}/identity`;async function Pe(e,t,{name:a,imageUploadToken:r}){void 0!==a&&await async function(e,t,a){const r=ke.encode(ke.fromPartial({mask:{paths:["name"]},userProfile:null!==a?{name:a}:{}}));await e.build().withHost(Oe).withMethod("POST").withPath(`/v3/user/username/${encodeURIComponent(t)}`).withEndpointIdentifier("/v3/user/username/{username}").withBody(r.finish()).withoutMarket().send()}(e,t,a),void 0!==r&&(null!==r?await async function(e,t,a){await e.build().withHost(Oe).withMethod("POST").withPath(`/v3/profile-image/${encodeURIComponent(t)}/${a}`).withEndpointIdentifier("/v3/profile-image/{username}/{uploadToken}").withoutMarket().send()}(e,t,r):await async function(e,t){await e.build().withHost(Oe).withMethod("DELETE").withPath(`/v3/profile-image/${encodeURIComponent(t)}`).withEndpointIdentifier("/v3/profile-image/{username}").withoutMarket().send()}(e,t))}var we=a(27245);var Ie=a(86637),_e=a(38561),Ne=a(51117);const Se="profile-editUserImage-imageContainer",De="profile-editUserImage-buttonContainer",xe="profile-editUserImage-button",Re="profile-editUserImage-overlay",Ae="profile-editUserImage-icon",Ce=function({onClickEdit:e,onClickRemove:t,name:a,images:r}){const[s,n]=(0,d.RH)(r),i=(0,Ne.VO)(s,n)===Ne.KO.loaded;return o().createElement("div",{className:Se},o().createElement(d.Oe,{loading:"eager",name:a,images:r,placeholderType:"user",shape:d.Kc.CIRCLE}),o().createElement("div",{className:l()(De,{[Re]:i})},o().createElement("button",{className:xe,"aria-haspopup":"true",onClick:e,type:"button"},o().createElement(A.Dy,null,f.ag.get("user.edit-details.choose-photo"))),o().createElement("div",{className:l()(Ae,"icon")},o().createElement(_e.f,{iconSize:48,"aria-hidden":!0})),o().createElement("button",{className:xe,onClick:t,type:"button"},o().createElement(A.Dy,null,f.ag.get("user.edit-details.remove-photo")))))},Te=o().memo((({userId:e,name:t,image:a,onClose:s,shouldOpenImagePicker:n})=>{const[i,c]=(0,Ie.Hs)(),[d,u]=function({name:e,image:t}){return(0,r.useReducer)(F,{loading:!1,message:null,name:e,image:t})}({name:t,image:a}),m=(0,r.useMemo)((()=>{const e=d.imageData||d.image;return e?[{url:e,width:300,height:300}]:[]}),[d.image,d.imageData]);(0,r.useEffect)((()=>{n&&c()}),[c,n]);const g=(0,r.useCallback)((e=>{e===Ie.Hy.FILE_TOO_BIG?u($(G)):e===Ie.Hy.IMAGE_TOO_SMALL&&u($(Q))}),[u]),p=(0,r.useCallback)((()=>{u({type:"removeImage"})}),[u]),b=(0,r.useCallback)((async t=>{t.preventDefault();if(0!==d.name.trim().length){u(B(!0));try{const t=d.removeImage?null:d.imageToken;await async function(e,{name:t,imageUploadToken:a}){await Pe(we.b.getInstance(),e,{name:t,imageUploadToken:a})}(e,{name:d.name,imageUploadToken:t}),s({name:d.name,image:d.imageData||d.image})}catch(e){u($(z))}}else u($(Z))}),[u,s,d.image,d.imageData,d.imageToken,d.name,d.removeImage,e]);return o().createElement(C.Z,{isOpen:!0,contentLabel:f.ag.get("user.edit-details.title"),onRequestClose:()=>s()},o().createElement("div",{className:j.container},o().createElement("div",{className:j.header},o().createElement(A.Dy,{as:"h1",className:j.heading,variant:A.Dy.canon},f.ag.get("user.edit-details.title")),o().createElement("button",{className:j.closeBtn,onClick:()=>s(),"aria-label":f.ag.get("close")},o().createElement(T.j,{iconSize:16}))),d.message&&o().createElement(K.X,{isErrorMessage:"error"===d.message.type,message:d.message.message}),o().createElement("form",{className:j.content,onSubmit:b},o().createElement(Ie.uL,{isOpen:i,minImageWidth:300,minImageHeight:300,maxFileSizeMB:4,onChange:async function(e){if(!e)return;const{imageFile:t,imageDataUrl:a}=e;if(u($(null)),u({type:"setImageData",data:a}),t)try{u(B(!0));const e=await async function(e){const t=await we.b.getInstance().build().withEndpointIdentifier("image-upload/v4/user-profile").withHost("https://image-upload.spotify.com/v4").withMethod("POST").withPath("/user-profile").withBody(e).withoutGlobalHeaders().withHeaders([{key:"Content-Type",value:"image/jpeg"}]).withoutMarket().send();if(!t.body)throw new Error("No upload token recieved");return t.body.uploadToken}(t);u({type:"setImageToken",token:e}),u(B(!1))}catch{u($(V))}},onError:g}),o().createElement("div",{className:j.image},o().createElement(Ce,{name:t,images:m,onClickEdit:c,onClickRemove:p}),d.loading&&o().createElement("div",{className:j.imageLoadingContainer},o().createElement(M.T,null))),o().createElement("div",{className:j.name},o().createElement("label",{htmlFor:"user-edit-name",className:j.textElementLabel},o().createElement(A.Dy,{as:"span",variant:A.$e.finaleBold,className:j.labelText},f.ag.get("user.edit-details.name-label"))),o().createElement("input",{"data-testid":"user-edit-name-input",id:"user-edit-name",type:"text",dir:"auto",className:l()(j.textElement,j.nameInput),onChange:e=>{u(function(e){return{type:"setName",name:e}}(e.target.value))},placeholder:f.ag.get("user.edit-details.name-placeholder"),maxLength:32,value:d.name})),o().createElement(U.Y,{version:"secondary",className:j.save,onClick:b,disabled:d.loading},f.ag.get("save")),o().createElement(A.Dy,{as:"p",variant:A.$e.finaleBold,className:j.disclaimer},f.ag.get("image-upload.legal-disclaimer")))))}));var Me=a(95875),je=a(2146),Ue=a(27599),We=a(87803),He=a(54753),Je=a(10106);function Le(e,t){switch(t.type){case"OPEN_MODAL":return{isModalOpen:!0,shouldOpenImagePicker:!1};case"OPEN_MODAL_WITH_IMAGEPICKER":return{isModalOpen:!0,shouldOpenImagePicker:!0};case"CLOSE_MODAL":return{isModalOpen:!1,shouldOpenImagePicker:!1};default:return e}}var Be=a(76790),$e=a(82385),Fe=a(21114),Ke=a(3045),Ge=a(66917),Qe=a.n(Ge),Ze=a(38517),ze=a(7593),Ve=a(24368),Xe=a(65821),qe=a(50324);const Ye=o().memo((({tracks:e,hasHeaderRow:t=!1,nrTracksVisible:a,userId:s})=>{const n=Qe().userToplistURI(s,"tracks").toURI(),i=a?e.slice(0,a):e,l=(0,r.useCallback)(((t,a)=>{var r;const s=(0,Xe.Z)(null==t||null===(r=t.album)||void 0===r?void 0:r.images,{desiredSize:40});return o().createElement(qe.SS,{key:a+t.uri,index:a,uri:(0,Ve.$V)(t),duration_ms:t.duration_ms,name:t.name,artists:t.artists,album:t.album,isPlayable:!0,isExplicit:!!t.explicit,isMOGEFRestricted:!!t.mogef19,imgUrl:(null==s?void 0:s.url)||"",tracksContext:e,contextUri:n})}),[e,n]);return o().createElement(ze.ZP,{value:"user-top-tracks-tracklist"},o().createElement(Ze.Pv,{ariaLabel:f.ag.get("top_tracks_this_month"),renderRow:l,nrTracks:i.length,tracks:i,resolveUri:e=>e.uri,hasHeaderRow:t,columns:[Ze.QD.INDEX,Ze.QD.TITLE,Ze.QD.ALBUM,Ze.QD.DURATION]}))}),((e,t)=>e.tracks===t.tracks)),et=o().memo((({tracks:e,title:t,tagline:a,seeAllUri:r,className:s,userId:n})=>{if(!e||0===e.length)return null;const i=e.length>4;return o().createElement("section",{className:s},o().createElement(Ke.r,{title:t,tagline:a,seeAllUri:r,hasMoreElements:i}),o().createElement(Ye,{tracks:e,userId:n,nrTracksVisible:4}))}),((e,t)=>e.tracks===t.tracks)),tt=e=>{var t,a;const s=(0,n.v9)(je.Gf),i=(0,n.v9)(je.A$),{userId:_}=e,S=`spotify:user:${_.split("&")[0]}`,A=(0,n.I0)(),C=(0,r.useMemo)((()=>(0,Xe.Z)(i)),[i]),[{isModalOpen:T,shouldOpenImagePicker:M},j]=function(){const[e,t]=(0,r.useReducer)(Le,{isModalOpen:!1,shouldOpenImagePicker:!1});return[e,t]}(),U=(0,y.o)(),W=!(0,E.k)(),{data:H,loading:J}=(0,O.J)(P.n5.getProfile,[{username:_,playlists:10,artists:10}]),L=null==H?void 0:H.body,B=null==L?void 0:L.public_playlists,$=null==L?void 0:L.is_following,F=(null==L?void 0:L.is_current_user)||!1,K=null==L?void 0:L.recently_played_artists,G=F?(null==C?void 0:C.url)||"":(null==L?void 0:L.image_url)||"",Q=(0,n.v9)((e=>e.entities.follows[S])),Z=(F?s:null==L?void 0:L.name)||"",z=(0,$e.Z)((null==L?void 0:L.image_url)||null),{data:V,loading:X}=(0,O.J)(P.n5.getFollowing,[_]),q=null==V||null===(t=V.body)||void 0===t?void 0:t.profiles,{data:Y,loading:ee}=(0,O.J)(P.n5.getFollowers,[_]),te=null==Y||null===(a=Y.body)||void 0===a?void 0:a.profiles,ae=(0,r.useMemo)((()=>(e=>e?P.n5.getUserTopArtists:()=>Promise.resolve({status:200,body:{items:[],offset:0,limit:0,total:0}}))(F)),[F]),re=(0,r.useMemo)((()=>(e=>e?P.n5.getUserTopTracks:()=>Promise.resolve({status:200,body:{items:[],offset:0,limit:0,total:0}}))(F)),[F]),{data:oe,loading:se}=(0,O.J)(ae,[]),{data:ne,loading:ie}=(0,O.J)(re,[]),le=null==oe?void 0:oe.body,ce=null==ne?void 0:ne.body,de=(0,r.useCallback)((()=>{U({targetUri:S,intent:Q?"unfollow":"follow",type:"click"}),A(Q?(0,p.Oi)([S]):(0,p.cQ)([S]))}),[A,U,S,Q]);(0,r.useEffect)((()=>{Z&&A((0,g.Dk)(Z))}),[A,Z]),(0,r.useEffect)((()=>{void 0===Q&&void 0!==$&&A((0,p.NU)(S,$))}),[A,Q,$,S]);const ue=(0,r.useCallback)((e=>{j({type:"CLOSE_MODAL"}),e&&(A((0,Me.dL)(e.name)),A((0,Me.GR)(e.image?[{url:e.image,height:null,width:null}]:[])))}),[A,j]),me=(0,r.useCallback)((()=>j({type:"OPEN_MODAL"})),[j]),ge=(0,r.useCallback)((()=>{j({type:"OPEN_MODAL_WITH_IMAGEPICKER"})}),[j]),pe=(0,r.useMemo)((()=>D(q)),[q]),fe=(0,r.useMemo)((()=>D(te)),[te]),be=(0,r.useMemo)((()=>(B||[]).map(N)),[B]),ve=(0,r.useMemo)((()=>(K||[]).map(x)),[K]),he=(0,r.useMemo)((()=>[{url:G}]),[G]);if(!L||J||X||ee||ie||se)return o().createElement(b.h,{errorMessage:f.ag.get("error.not_found.title.page")});const ye={total:L.followers_count},Ee=l()("contentSpacing",c.section,c.shelf);return o().createElement("div",{className:c.user},o().createElement(d.gF,{backgroundColor:z},o().createElement(u.W,null,o().createElement(m.i,{text:Z})),o().createElement(Fe._,{menu:o().createElement(We.I,{uri:L.uri})},o().createElement("div",{className:c.imageContainer},o().createElement(Je.T,{canEdit:F,name:Z,images:he,onClick:ge,placeholderType:"user",shape:d.Kc.CIRCLE}))),o().createElement(d.sP,null,o().createElement(d.dy,{small:!0,uppercase:!0},f.ag.get("card.tag.profile")),o().createElement(Fe._,{menu:o().createElement(We.I,{uri:L.uri})},o().createElement(d.xd,{canEdit:F,editTitle:f.ag.get("playlist.edit-details.title"),onClick:me},Z)),o().createElement(d.QS,{totalFollowers:ye.total,totalFollowing:pe.length,publicPlaylists:L.total_public_playlists_count,userId:_}))),o().createElement(h.o,{backgroundColor:z},o().createElement(h.F,null,!F&&o().createElement(k.Pv,{id:k.gr.entityHeaderAdd},o().createElement(v.e,{isFollowing:Boolean(Q),onClick:de,disabled:W})),o().createElement(Ue.y,{menu:o().createElement(We.I,{uri:L.uri,onEditProfileCallback:me})},o().createElement(He.z,null)))),o().createElement(I.P,{className:Ee,total:(null==le?void 0:le.total)||0,title:f.ag.get("top_artists_this_month"),tagline:f.ag.get("only_visible_to_you"),seeAllUri:`spotify:app:user:${_}:top:artists`},null==le?void 0:le.items.map((e=>o().createElement(Be.I,{key:e.uri,entity:e})))),o().createElement(et,{className:Ee,title:f.ag.get("top_tracks_this_month"),tagline:f.ag.get("only_visible_to_you"),seeAllUri:`spotify:app:user:${_}:top:tracks`,userId:_,tracks:null==ce?void 0:ce.items}),o().createElement(I.P,{className:Ee,total:L.total_public_playlists_count,title:f.ag.get("public_playlists"),seeAllUri:`spotify:app:user:${_}:playlists`},be.map((e=>o().createElement(R.Z,{key:e.uri,entity:e})))),ve.length?o().createElement(I.P,{className:Ee,total:ve.length,title:f.ag.get("recently_played_artists"),seeAllUri:`spotify:app:user:${_}:recently-played-artists`},ve.map((e=>o().createElement(Be.I,{key:e.uri,entity:e})))):null,fe.length?o().createElement(I.P,{className:Ee,title:f.ag.get("followers"),total:fe.length,seeAllUri:`spotify:app:user:${_}:followers`},fe.map((e=>{const t=(0,w.U)(e.uri);return o().createElement(t,{key:e.uri,entity:e})}))):null,pe.length?o().createElement(I.P,{className:Ee,title:f.ag.get("following"),total:pe.length,seeAllUri:`spotify:app:user:${_}:following`},pe.map((e=>{const t=(0,w.U)(e.uri);return o().createElement(t,{key:e.uri,entity:e})}))):null,F&&T?o().createElement(Te,{userId:_,name:Z,image:G,onClose:ue,shouldOpenImagePicker:M}):null)},at=e=>{var t;const{userId:a}=e,{data:s,loading:n}=(0,O.J)(P.n5.getFollowing,[a]),i=null==s||null===(t=s.body)||void 0===t?void 0:t.profiles,d=(0,r.useMemo)((()=>D(i)),[i]);return n?o().createElement(b.h,{errorMessage:f.ag.get("error.not_found.title.page")}):o().createElement(I.P,{className:l()("contentSpacing",c.subPage),title:f.ag.get("following"),total:d.length,showAll:!0},d.map((e=>{const t=(0,w.U)(e.uri);return o().createElement(t,{entity:e})})))},rt=e=>{var t;const{userId:a}=e,{data:s,loading:n}=(0,O.J)(P.n5.getFollowers,[a]),i=null==s||null===(t=s.body)||void 0===t?void 0:t.profiles,d=(0,r.useMemo)((()=>D(i)),[i]);return n?o().createElement(b.h,{errorMessage:f.ag.get("error.not_found.title.page")}):o().createElement(I.P,{className:l()("contentSpacing",c.subPage),title:f.ag.get("followers"),total:d.length,showAll:!0},d.map((e=>{const t=(0,w.U)(e.uri);return o().createElement(t,{entity:e})})))},ot=e=>{const{userId:t}=e,{data:a,loading:s}=(0,O.J)(P.n5.getPlaylists,[{username:t}]),n=null==a?void 0:a.body,{public_playlists:i,total_public_playlists_count:d=0}=n||{},u=(0,r.useMemo)((()=>(i||[]).map(N)),[i]);return s?o().createElement(b.h,{errorMessage:f.ag.get("error.not_found.title.page")}):o().createElement(I.P,{className:l()("contentSpacing",c.subPage),total:d,title:f.ag.get("public_playlists"),showAll:!0},u.map((e=>o().createElement(R.Z,{key:e.uri,entity:e}))))},st=e=>{var t;const{userId:a}=e,{data:s,loading:n}=(0,O.J)(P.n5.getRecentlyPlayedArtists,[{username:a,limit:50}]),i=null==s||null===(t=s.body)||void 0===t?void 0:t.artists,d=(0,r.useMemo)((()=>(i||[]).map(x)),[i]);return n?o().createElement(b.h,{errorMessage:f.ag.get("error.not_found.title.page")}):o().createElement(I.P,{className:l()("contentSpacing",c.subPage),total:d.length,title:f.ag.get("recently_played_artists"),showAll:!0},d.map((e=>o().createElement(Be.I,{key:e.uri,entity:e}))))},nt=({userId:e})=>{const{data:t,loading:a}=(0,O.J)(P.n5.getUserTopTracks,[{offset:0,limit:50}]),r=null==t?void 0:t.body;return a?o().createElement(b.h,{errorMessage:f.ag.get("error.not_found.title.page")}):r?o().createElement("div",{className:l()("contentSpacing",c.subPage,c.topTrackSubPage)},o().createElement("div",{className:c.header},o().createElement(A.Dy,{as:"h1",variant:A.Dy.canon,className:c.title},f.ag.get("top_tracks_this_month")),o().createElement(A.Dy,{as:"p",variant:A.Dy.mesto},f.ag.get("only_visible_to_you"))),o().createElement(Ye,{tracks:r.items,userId:e,hasHeaderRow:!0})):null},it=({userId:e})=>{const{data:t,loading:a}=(0,O.J)(P.n5.getProfile,[{username:e}]),r=null==t?void 0:t.body,s=(null==r?void 0:r.is_current_user)||!1;return r&&!a&&s?o().createElement(nt,{userId:e}):o().createElement(b.h,{errorMessage:f.ag.get("error.not_found.title.page")})},lt=()=>{const{data:e,loading:t}=(0,O.J)(P.n5.getUserTopArtists),a=null==e?void 0:e.body;return t?o().createElement(b.h,{errorMessage:f.ag.get("error.not_found.title.page")}):a?o().createElement(I.P,{className:l()("contentSpacing",c.subPage),total:a.items.length,title:f.ag.get("top_artists_this_month"),tagline:f.ag.get("only_visible_to_you"),showAll:!0},a.items.map((e=>o().createElement(Be.I,{key:e.uri,entity:e})))):null},ct=({userId:e})=>{const{data:t,loading:a}=(0,O.J)(P.n5.getProfile,[{username:e}]),r=null==t?void 0:t.body,s=(null==r?void 0:r.is_current_user)||!1;return r&&!a&&s?o().createElement(lt,null):o().createElement(b.h,{errorMessage:f.ag.get("error.not_found.title.page")})},dt=o().memo((()=>{const{userId:e}=(0,s.UO)();return o().createElement("section",null,o().createElement(s.AW,{exact:!0,path:"/user/:userId/playlists"},o().createElement(ot,{userId:e})),o().createElement(s.AW,{exact:!0,path:"/user/:userId/top/tracks"},o().createElement(it,{userId:e})),o().createElement(s.AW,{exact:!0,path:"/user/:userId/top/artists"},o().createElement(ct,{userId:e})),o().createElement(s.AW,{exact:!0,path:"/user/:userId/recently-played-artists"},o().createElement(st,{userId:e})),o().createElement(s.AW,{exact:!0,path:"/user/:userId/following"},o().createElement(at,{userId:e})),o().createElement(s.AW,{exact:!0,path:"/user/:userId/followers"},o().createElement(rt,{userId:e})),o().createElement(s.AW,{exact:!0,path:"/user/:userId"},o().createElement(tt,{userId:e})))})),ut=dt},1292:(e,t,a)=>{"use strict";a.d(t,{e:()=>u});var r=a(27378),o=a.n(r),s=a(61043),n=a(60042),i=a.n(n);const l="show-followButton-button",c="show-followButton-isFollowing",d="show-followButton-disabled",u=o().memo((({isFollowing:e,onClick:t,disabled:a=!1})=>{const r=e?s.ag.get("following"):s.ag.get("follow");return o().createElement("button",{type:"button",className:i()(l,{[c]:e,[d]:a}),onClick:t},r)}))},51117:(e,t,a)=>{"use strict";a.d(t,{Ee:()=>r.E,KO:()=>s,VO:()=>n});var r=a(21483),o=a(27378);let s;function n(e,t){const a=e?s.loading:s.error,[r,n]=(0,o.useState)(a);return(0,o.useEffect)((()=>{if(!e)return void n(s.error);n(s.loading);const a=document.createElement("img");a.onload=()=>{n(s.loaded)},a.onerror=()=>{n(s.error)},a.setAttribute("src",e),t&&a.setAttribute("srcSet",t)}),[e,t]),r}!function(e){e[e.loading=0]="loading",e[e.loaded=1]="loaded",e[e.error=2]="error"}(s||(s={}))}}]);