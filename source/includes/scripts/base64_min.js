function base64_decode(a){var d,b,e,c,g,f=0,h=0;c="";var i=[];if(!a)return a;a+="";do d="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".indexOf(a.charAt(f++)),b="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".indexOf(a.charAt(f++)),c="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".indexOf(a.charAt(f++)),g="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".indexOf(a.charAt(f++)),e=d<<18|b<<12|c<<6|g,d=e>>16&255,b=e>>8&255,
e&=255,c==64?i[h++]=String.fromCharCode(d):g==64?i[h++]=String.fromCharCode(d,b):i[h++]=String.fromCharCode(d,b,e);while(f<a.length);c=i.join("");return c=this.utf8_decode(c)}
function base64_encode(a){var d,b,e,c,g=0,f=0,h="",h=[];if(!a)return a;a=this.utf8_encode(a+"");do d=a.charCodeAt(g++),b=a.charCodeAt(g++),e=a.charCodeAt(g++),c=d<<16|b<<8|e,d=c>>18&63,b=c>>12&63,e=c>>6&63,c&=63,h[f++]="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(d)+"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(b)+"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(e)+"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(c);
while(g<a.length);h=h.join("");a=a.length%3;return(a?h.slice(0,a-3):h)+"===".slice(a||3)}function utf8_decode(a){var d=[],b=0,e=0,c=0,g=0,f=0;for(a+="";b<a.length;)c=a.charCodeAt(b),c<128?(d[e++]=String.fromCharCode(c),b++):c>191&&c<224?(g=a.charCodeAt(b+1),d[e++]=String.fromCharCode((c&31)<<6|g&63),b+=2):(g=a.charCodeAt(b+1),f=a.charCodeAt(b+2),d[e++]=String.fromCharCode((c&15)<<12|(g&63)<<6|f&63),b+=3);return d.join("")}
function utf8_encode(a){if(a===null||typeof a==="undefined")return"";a+="";var d="",b,e,c=0;b=e=0;for(var c=a.length,g=0;g<c;g++){var f=a.charCodeAt(g),h=null;f<128?e++:h=f>127&&f<2048?String.fromCharCode(f>>6|192)+String.fromCharCode(f&63|128):String.fromCharCode(f>>12|224)+String.fromCharCode(f>>6&63|128)+String.fromCharCode(f&63|128);h!==null&&(e>b&&(d+=a.slice(b,e)),d+=h,b=e=g+1)}e>b&&(d+=a.slice(b,c));return d};