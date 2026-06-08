# SQL Practice Project

這是一個 SQL 基礎練習專案，主要目的是練習 QA / 測試人員在資料驗證時常用的 SQL 查詢能力。專案內容包含建立資料表、插入測試資料、CRUD 操作、條件查詢、統計查詢與 JOIN 查詢。

## 專案目的

本專案用來練習 SQL 基礎語法，並理解 QA 在測試流程中如何透過 SQL 驗證資料是否正確。

在實際 QA 工作中，除了從畫面或 API response 檢查結果，也可能需要進一步查詢資料庫，確認資料是否真的被新增、修改或關聯正確。

例如：

* 使用者註冊後，確認 `users` table 是否新增資料
* 修改會員資料後，確認資料庫欄位是否更新
* 建立訂單後，確認 `orders` table 是否有正確紀錄
* 查詢訂單列表時，確認前端顯示資料與資料庫內容一致
* 透過 JOIN 查詢確認使用者與訂單資料是否正確關聯

## 使用工具

* SQL
* SQLite
* DB Browser for SQLite
* Git / GitHub

## 專案結構

```text
SQL-practice/
├── database/
│   └── qa_practice
├── notes/
│   └── learning-notes.md
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_insert_data.sql
│   ├── 03_basic_crud.sql
│   ├── 04_filter_queries.sql
│   ├── 05_group_by_stats.sql
│   └── 06_join_queries.sql
└── README.md
```

## 資料夾與檔案說明

* `database/`：放置 SQLite 練習用資料庫檔案
* `notes/`：放置 SQL 學習筆記
* `sql/`：放置 SQL 練習語法檔案
* `01_create_tables.sql`：建立資料表
* `02_insert_data.sql`：新增測試資料
* `03_basic_crud.sql`：CRUD 基礎操作
* `04_filter_queries.sql`：WHERE、LIKE、ORDER BY 等條件查詢
* `05_group_by_stats.sql`：GROUP BY、COUNT 等統計查詢
* `06_join_queries.sql`：JOIN 關聯查詢

## 練習內容

### 1. 建立資料表

練習建立基本資料表，例如：

* `users`
* `orders`

並理解資料表欄位、Primary Key 與資料關聯。

### 2. 新增測試資料

練習使用 `INSERT INTO` 新增測試資料，建立後續查詢與驗證需要的資料。

### 3. CRUD 基礎操作

練習基本 CRUD：

* `CREATE`：新增資料
* `READ`：查詢資料
* `UPDATE`：修改資料
* `DELETE`：刪除資料

### 4. 條件查詢

練習使用：

* `WHERE`
* `LIKE`
* `ORDER BY`
* `ASC`
* `DESC`

用來查詢符合條件的資料，例如查詢特定狀態、模糊搜尋名稱，或依時間 / 金額排序。

### 5. 統計查詢

練習使用：

* `COUNT`
* `GROUP BY`

用來統計不同狀態或分類的資料數量。

例如：

* 計算每種訂單狀態有幾筆資料
* 統計每位使用者有幾筆訂單

### 6. JOIN 關聯查詢

練習使用 JOIN 查詢不同資料表之間的關聯。

例如：

* 查詢使用者與其訂單資料
* 確認 `users` 與 `orders` 之間的 `user_id` 是否正確對應
* 驗證前端顯示的使用者訂單資料是否與資料庫一致

## QA 流程對應

SQL 在 QA 流程中常用於測試執行與資料驗證階段。

當 QA 測試功能時，不只需要確認畫面顯示正確，也可以透過 SQL 查詢資料庫，確認後端資料是否真的符合預期。

例如：

```text
前端操作：新增一位使用者
SQL 驗證：查詢 users table 是否真的新增該使用者資料
```

```text
前端操作：修改訂單狀態
SQL 驗證：查詢 orders table 的 status 欄位是否正確更新
```

```text
API 操作：建立訂單
SQL 驗證：確認 orders table 是否新增訂單資料，且 user_id 是否正確關聯到 users table
```

## 學習重點

透過這個專案，我練習了：

* SQL 基礎查詢語法
* 建立資料表與新增測試資料
* CRUD 基礎操作
* WHERE / LIKE / ORDER BY 條件查詢
* COUNT / GROUP BY 統計查詢
* JOIN 關聯查詢
* 使用 SQL 驗證測試資料是否正確
* 理解 QA 如何透過資料庫查詢輔助測試

## 專案總結

這個專案讓我建立 SQL 基礎能力，並理解 SQL 在 QA 測試中的應用方式。對 QA 來說，SQL 不只是查資料的工具，也可以用來驗證前端操作、API response 與資料庫實際資料是否一致。

透過這個練習，我能更清楚理解測試不只停留在畫面操作，也需要從資料層面確認系統行為是否正確。
