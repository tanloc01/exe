<!doctype html>
<html lang="vi">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Tấn Lộc</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">
  <style>
    :root {
      --accent-a:#6f2bdc;
      --accent-b:#2dd4ff;
      --glass-bg:rgba(255,255,255,0.05);
      --glass-border:rgba(255,255,255,0.15);
    }
    *{margin:0;padding:0;box-sizing:border-box}
    body {
      font-family: Poppins, system-ui, sans-serif;
      background: url("https://i.pinimg.com/originals/a6/c5/dc/a6c5dc5ff0620933cf6a7e76fec0e0b2.jpg") no-repeat center center fixed;
      background-size: cover;
      color: #eaf6ff;
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 28px;
    }
    .container {width:100%;max-width:860px;z-index:1;display:flex;flex-direction:column;gap:24px;}

    /* avatar */
    .avatar {display:flex;justify-content:center}
    .avatar img {
      width:90px;height:90px;border-radius:50%;
      border:3px solid rgba(255,255,255,0.25);
      box-shadow:0 6px 20px rgba(0,0,0,0.5);
    }

    /* panel */
    .panel {
      padding:22px;
      border-radius:18px;
      background:var(--glass-bg);
      backdrop-filter: blur(16px);
      border:1px solid var(--glass-border);
      box-shadow:0 8px 28px rgba(0,0,0,0.6),0 0 20px rgba(111,43,220,0.35);
      animation: fadeIn .5s ease;
    }
    @keyframes fadeIn {from{opacity:0;transform:translateY(15px)}to{opacity:1;transform:translateY(0)}}
    .title {
      text-align:center;
      font-weight:700;
      margin-bottom:18px;
      color:#dce9f9;
      font-size:19px;
      letter-spacing:.5px;
    }

    /* exec buttons - CHỈNH SỬA THÀNH DỌC */
    .exec-list {
      display: flex;
      flex-direction: column;
      gap: 12px;
    }
    .exec-btn {
      padding: 16px;
      border-radius: 14px;
      font-weight: 700;
      font-size: 15px;
      text-align: center;
      color: #fff;
      text-decoration: none;
      transition: all .3s ease;
      box-shadow: 0 6px 14px rgba(0,0,0,0.3);
      display: block;
      width: 100%;
    }
    .exec-btn:hover {transform: translateY(-4px) scale(1.02);}
    .delta {background:linear-gradient(135deg,#3b82f6,#6f2bdc)}
    .codex {background:linear-gradient(135deg,#7c3aed,#22d3ee)}
    .ronix {background:linear-gradient(135deg,#0ea5e9,#7c3aed)}
    .krnl  {background:linear-gradient(135deg,#1e293b,#0ea5e9)}

    /* popup overlay */
    .overlay {
      position: fixed;
      inset: 0;
      background: rgba(0,0,0,0.65);
      display: none;
      align-items: center;
      justify-content: center;
      z-index: 9999;
    }
    .popup {
      background: var(--glass-bg);
      padding: 22px;
      border-radius: 16px;
      backdrop-filter: blur(18px);
      border:2px solid #3b82f6;   /* viền xanh */
      box-shadow: 0 0 15px rgba(59,130,246,0.7), 0 8px 25px rgba(0,0,0,0.7);
      display: flex;
      flex-direction: column;
      gap: 14px;
      min-width: 280px;
      text-align: center;
      animation: scaleIn .35s ease;
    }
    @keyframes scaleIn {from{opacity:0;transform:scale(.85)}to{opacity:1;transform:scale(1)}}
    .popup h3 {font-size: 16px; color: #fff;}

    /* scripts */
    .scripts {display:grid;grid-template-columns:repeat(auto-fill,minmax(220px,1fr));gap:16px;}
    .script-card {
      background:var(--glass-bg);
      border:1px solid var(--glass-border);
      border-radius:14px;
      padding:16px;
      display:flex;
      flex-direction:column;
      gap:10px;
      box-shadow:0 6px 18px rgba(0,0,0,0.35);
      transition: transform .25s ease,box-shadow .25s ease;
    }
    .script-card:hover {transform: translateY(-3px);box-shadow:0 10px 24px rgba(0,0,0,0.45);}
    .script-title {font-weight:600;font-size:15px;color:#fff}
    .script-desc {font-size:12px;color:#b7c7da}
    .btn-row {display:flex;gap:10px;}
    .copy-btn {
      flex:1;
      padding:10px 14px;
      border:0;
      border-radius:8px;
      cursor:pointer;
      background:linear-gradient(135deg,var(--accent-a),var(--accent-b));
      font-weight:600;
      font-size:14px;
      color:#031220;
      transition:all .3s ease;
    }
    .copy-btn:hover {transform:scale(1.05)}
    .delete-btn {background:#ef4444;color:#fff;}

    /* admin */
    .admin-btn {
      position: fixed;bottom: 22px;right: 22px;
      background: linear-gradient(135deg,#6f2bdc,#2dd4ff);
      color: #031220;font-weight: 700;font-size: 18px;
      border: 0;border-radius: 50%;width: 58px;height: 58px;
      box-shadow: 0 6px 18px rgba(0,0,0,0.4);
      cursor: pointer;z-index: 9999;
      display:flex;align-items:center;justify-content:center;
      transition:.3s ease;
    }
    .admin-btn:hover {transform: scale(1.1);}
    .admin-panel {
      position: fixed;bottom: 90px;right: 24px;
      background: var(--glass-bg);
      border: 1px solid var(--glass-border);
      border-radius: 14px;padding: 18px;
      display: none;flex-direction: column;gap: 14px;
      width: 300px;max-height: 70vh;overflow-y: auto;
      z-index: 9998;
      box-shadow: 0 6px 20px rgba(0,0,0,0.5);
      backdrop-filter: blur(16px);
    }
    .admin-panel input,.admin-panel textarea {
      width:100%;padding:8px;
      border-radius:6px;border:1px solid rgba(255,255,255,0.2);
      background:#11182b;color:#fff;font-size:13px;
    }
    .admin-panel h4{color:#9cc7ff;font-size:14px;font-weight:600}
    .admin-panel button{
      padding:10px;border-radius:8px;border:0;
      background:linear-gradient(135deg,var(--accent-a),var(--accent-b));
      font-weight:600;color:#031220;cursor:pointer;
    }
    
    /* Toast notification */
    .toast {
      position: fixed;
      bottom: 20px;
      left: 50%;
      transform: translateX(-50%);
      background: rgba(0, 0, 0, 0.8);
      color: white;
      padding: 12px 24px;
      border-radius: 8px;
      z-index: 10000;
      opacity: 0;
      transition: opacity 0.3s;
    }
    .toast.show {
      opacity: 1;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="avatar"><img src="https://i.pinimg.com/originals/82/9b/74/829b74c0e393c4c47907f2dfffc64fc2.gif" alt="Avatar"></div>

    <!-- clients -->
    <div class="panel">
      <div class="title">Executor</div>
      <div class="exec-list">
        <a href="javascript:void(0)" class="exec-btn delta" onclick="openPopup('delta-popup')">Delta X</a>
        <a href="javascript:void(0)" class="exec-btn codex" onclick="openPopup('codex-popup')">Codex</a>
        <a href="javascript:void(0)" class="exec-btn ronix" onclick="openPopup('ronix-popup')">Ronix</a>
        <a href="javascript:void(0)" class="exec-btn krnl" onclick="openPopup('krnl-popup')">KRNL</a>
      </div>
    </div>

    <!-- scripts -->
    <div class="panel">
      <div class="title">SCRIPTS</div>
      <div class="scripts" id="script-list"></div>
    </div>
  </div>

  <!-- popups -->
  <div class="overlay" id="delta-popup" onclick="closeOverlay(event,'delta-popup')">
    <div class="popup">
      <h3>Delta</h3>
      <a id="delta-global" href="#" class="exec-btn delta" download>Delta Global</a>
      <a id="delta-vng" href="#" class="exec-btn delta" download>Delta VNG</a>
    </div>
  </div>
  <div class="overlay" id="codex-popup" onclick="closeOverlay(event,'codex-popup')">
    <div class="popup">
      <h3>Codex</h3>
      <a id="codex-global" href="#" class="exec-btn codex" download>Codex Global</a>
      <a id="codex-vng" href="#" class="exec-btn codex" download>Codex VNG</a>
    </div>
  </div>
  <div class="overlay" id="ronix-popup" onclick="closeOverlay(event,'ronix-popup')">
    <div class="popup">
      <h3>Ronix</h3>
      <a id="ronix-global" href="#" class="exec-btn ronix" download>Ronix Global</a>
      <a id="ronix-vng" href="#" class="exec-btn ronix" download>Ronix VNG</a>
    </div>
  </div>
  <div class="overlay" id="krnl-popup" onclick="closeOverlay(event,'krnl-popup')">
    <div class="popup">
      <h3>KRNL</h3>
      <a id="krnl-global" href="#" class="exec-btn krnl" download>KRNL Global</a>
      <a id="krnl-vng" href="#" class="exec-btn krnl" download>KRNL VNG</a>
    </div>
  </div>

  <!-- Toast notification -->
  <div class="toast" id="copy-toast"></div>

  <!-- admin -->
  <button class="admin-btn" onclick="openAdmin()">⚙</button>
  <div class="admin-panel" id="admin-panel">
    <input type="password" id="admin-pass" placeholder="Nhập mật khẩu">
    <button onclick="checkPass()">Login</button>
    <div id="admin-content" style="display:none">
      <h4>Cập nhật link client</h4>
      <input id="link-delta-global" placeholder="Delta Global link">
      <input id="link-delta-vng" placeholder="Delta VNG link">
      <input id="link-codex-global" placeholder="Codex Global link">
      <input id="link-codex-vng" placeholder="Codex VNG link">
      <input id="link-ronix-global" placeholder="Ronix Global link">
      <input id="link-ronix-vng" placeholder="Ronix VNG link">
      <input id="link-krnl-global" placeholder="KRNL Global link">
      <input id="link-krnl-vng" placeholder="KRNL VNG link">
      <button onclick="updateLinks()">Lưu link</button>

      <h4>Thêm script</h4>
      <input id="script-name" placeholder="Tên script">
      <input id="script-desc" placeholder="Mô tả script">
      <textarea id="script-code" rows="3" placeholder="Code script"></textarea>
      <button onclick="addScript()">Thêm script</button>
    </div>
  </div>

  <script>
    const BIN_ID = "68cea7b443b1c97be9494d4d";
    const API_KEY = "$2a$10$4wv3SZr7FOegcPB2LBHuUObqAHVOVY0Xp/1HxhHP0BWfnXGvslZKa";
    const BASE_URL = `https://api.jsonbin.io/v3/b/${BIN_ID}`;
    let isAdmin = false;

    // Hàm hiển thị thông báo toast
    function showToast(message) {
      const toast = document.getElementById('copy-toast');
      toast.textContent = message;
      toast.classList.add('show');
      
      setTimeout(() => {
        toast.classList.remove('show');
      }, 3000);
    }

    async function fetchData(){
      try {
        let res = await fetch(BASE_URL, { headers: { "X-Master-Key": API_KEY }});
        let data = await res.json();
        return data.record || {};
      } catch (e) {
        console.error("Error fetching data:", e);
        return {};
      }
    }
    
    async function saveData(record){
      try {
        await fetch(BASE_URL, {
          method: "PUT",
          headers: {
            "Content-Type": "application/json",
            "X-Master-Key": API_KEY
          },
          body: JSON.stringify(record)
        });
      } catch (e) {
        console.error("Error saving data:", e);
        alert("Lưu thất bại, kiểm tra kết nối.");
      }
    }

    function openPopup(id){document.getElementById(id).style.display="flex";}
    function closeOverlay(e,id){if(e.target.classList.contains('overlay')){document.getElementById(id).style.display="none";}}

    function openAdmin(){let p=document.getElementById("admin-panel");p.style.display=p.style.display==="flex"?"none":"flex";}
    
    function checkPass(){
      if(document.getElementById("admin-pass").value==="2010"){
        isAdmin = true;
        document.getElementById("admin-pass").style.display="none";
        document.querySelector("#admin-panel button").style.display="none";
        document.getElementById("admin-content").style.display="block";
        loadData();
      } else {
        alert("Sai mật khẩu!");
      }
    }

    async function updateLinks(){
      let r = await fetchData();
      r.links = {
        delta_global: document.getElementById("link-delta-global").value,
        delta_vng: document.getElementById("link-delta-vng").value,
        codex_global: document.getElementById("link-codex-global").value,
        codex_vng: document.getElementById("link-codex-vng").value,
        ronix_global: document.getElementById("link-ronix-global").value,
        ronix_vng: document.getElementById("link-ronix-vng").value,
        krnl_global: document.getElementById("link-krnl-global").value,
        krnl_vng: document.getElementById("link-krnl-vng").value,
      };
      await saveData(r);
      loadData();
      alert("Đã lưu link!");
    }

    async function addScript(){
      let name=document.getElementById("script-name").value.trim();
      let desc=document.getElementById("script-desc").value.trim();
      let code=document.getElementById("script-code").value;
      if(!name||!code){alert("Điền đủ thông tin!");return;}
      let r=await fetchData();
      if(!r.scripts) r.scripts = [];
      r.scripts.push({name,desc,code});
      await saveData(r);
      loadData();
      alert("Đã thêm script!");
      
      // Clear form
      document.getElementById("script-name").value = "";
      document.getElementById("script-desc").value = "";
      document.getElementById("script-code").value = "";
    }

    async function deleteScript(index){
      if(!confirm("Bạn có chắc muốn xóa script này?")) return;
      let r = await fetchData();
      if(r.scripts && r.scripts.length > index){
        r.scripts.splice(index,1);
        await saveData(r);
        loadData();
        alert("Đã xóa script!");
      }
    }

    function escapeHtml(str) {
      return String(str || "").replace(/[&<>"']/g, function(m) {
        return {
          '&': '&amp;',
          '<': '&lt;',
          '>': '&gt;',
          '"': '&quot;',
          "'": '&#39;'
        }[m];
      });
    }

    function renderScripts(scripts){
      let list=document.getElementById("script-list");
      list.innerHTML="";
      
      if (!scripts || scripts.length === 0) {
        list.innerHTML = '<div class="script-card"><div class="script-desc" style="text-align:center">Chưa có script nào. Đăng nhập admin để thêm script.</div></div>';
        return;
      }
      
      scripts.forEach((s,i)=>{
        let card=document.createElement("div");
        card.className="script-card";
        card.innerHTML=`
          <div class="script-title">${escapeHtml(s.name)}</div>
          <div class="script-desc">${escapeHtml(s.desc||"Không có mô tả")}</div>
          <div class="btn-row">
            <button class="copy-btn">Copy</button>
            ${isAdmin?'<button class="delete-btn">Xóa</button>':""}
          </div>`;
        
        let copyBtn=card.querySelector(".copy-btn");
        copyBtn.onclick=function(){
          navigator.clipboard.writeText(s.code||"").then(() => {
            // Thay đổi thông báo tại đây
            showToast("✅ Script đã được sao chép vào clipboard!");
          }).catch(err => {
            console.error("Copy failed:", err);
            showToast("❌ Sao chép thất bại. Hãy thử thủ công.");
          });
        };
        
        if(isAdmin){
          let delBtn=card.querySelector(".delete-btn");
          delBtn.onclick=function(){deleteScript(i)};
        }
        
        list.appendChild(card);
      });
    }

    async function loadData(){
      let r = await fetchData();
      
      // Update links
      if(r.links){
        document.getElementById("delta-global").href=r.links.delta_global||"#";
        document.getElementById("delta-vng").href=r.links.delta_vng||"#";
        document.getElementById("codex-global").href=r.links.codex_global||"#";
        document.getElementById("codex-vng").href=r.links.codex_vng||"#";
        document.getElementById("ronix-global").href=r.links.ronix_global||"#";
        document.getElementById("ronix-vng").href=r.links.ronix_vng||"#";
        document.getElementById("krnl-global").href=r.links.krnl_global||"#";
        document.getElementById("krnl-vng").href=r.links.krnl_vng||"#";
        
        // Prefill admin inputs if admin
        if(isAdmin){
          document.getElementById("link-delta-global").value = r.links.delta_global || "";
          document.getElementById("link-delta-vng").value = r.links.delta_vng || "";
          document.getElementById("link-codex-global").value = r.links.codex_global || "";
          document.getElementById("link-codex-vng").value = r.links.codex_vng || "";
          document.getElementById("link-ronix-global").value = r.links.ronix_global || "";
          document.getElementById("link-ronix-vng").value = r.links.ronix_vng || "";
          document.getElementById("link-krnl-global").value = r.links.krnl_global || "";
          document.getElementById("link-krnl-vng").value = r.links.krnl_vng || "";
        }
      }
      
      // Render scripts
      if(r.scripts){
        renderScripts(r.scripts);
      } else {
        renderScripts([]);
      }
    }
    
    // Initialize
    loadData();
  </script>
</body>
</html>
