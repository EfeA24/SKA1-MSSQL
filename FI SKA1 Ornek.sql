use FI_AA_Ornek

create table SKA1(
Position int identity (1,1),
MANDT_Client nvarchar (3) primary key,
KTOPL_ChartOfAccounts nvarchar (4) unique,
SAKNR_GLAccount nvarchar (10) unique,
XBILK_BalanceSheet varchar (3) check (XBILK_BalanceSheet in ('YES','NO')),
SAKAN_GLnum int,
BILKT_GroupAccountNumber nvarchar (10),
ERDAT_CreatedOn datetime,
ERNAM_CreatedBy nvarchar (12),
GVTYP_PLtype nvarchar (2) check (GVTYP_PLtype in ('1', '2','3','4','5','6','7','8','9','10')), 
KTOKS_GLaccounts char (1) check (KTOKS_GLaccounts in ('1', '2','3','4')),
MUSTR_SmplAccNum int,
VBUND_TradingPartnerID nvarchar (6),
XLOEV_AccountMarkedForDeletion varchar (3) check (XLOEV_AccountMarkedForDeletion in ('YES','NO')),
XSPEA_BlockedForCreation varchar (3) check (XSPEA_BlockedForCreation in ('YES','NO')),
XSPEB_BlockAccountForPosting varchar (3) check (XSPEB_BlockAccountForPosting in ('YES','NO')),
XSPEP_BlockedForPlanning varchar (3) check (XSPEP_BlockedForPlanning in ('YES','NO')),
MCOD1_MatchcodeSearch nvarchar (25),
FUNC_AREA__FunctionalArea nvarchar (16),
LAST_CHANGED_TS datetime
);

create table PL_Account_Group (
GroupID int identity(1,1) primary key,
TableName nvarchar(20)
);

alter table SKA1
add constraint FK_SKA1_GroupID
foreign key (GroupID) references PL_Account_Group (GroupID);
