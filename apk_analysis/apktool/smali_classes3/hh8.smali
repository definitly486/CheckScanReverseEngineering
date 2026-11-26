.class public final synthetic Lhh8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Landroidx/work/impl/model/SystemIdInfoDao_Impl;

.field public final synthetic c:Landroidx/work/impl/model/SystemIdInfo;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/model/SystemIdInfoDao_Impl;Landroidx/work/impl/model/SystemIdInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhh8;->b:Landroidx/work/impl/model/SystemIdInfoDao_Impl;

    iput-object p2, p0, Lhh8;->c:Landroidx/work/impl/model/SystemIdInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lhh8;->c:Landroidx/work/impl/model/SystemIdInfo;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    iget-object p0, p0, Lhh8;->b:Landroidx/work/impl/model/SystemIdInfoDao_Impl;

    invoke-static {p0, v0, p1}, Landroidx/work/impl/model/SystemIdInfoDao_Impl;->e(Landroidx/work/impl/model/SystemIdInfoDao_Impl;Landroidx/work/impl/model/SystemIdInfo;Landroidx/sqlite/SQLiteConnection;)Lj59;

    move-result-object p0

    return-object p0
.end method
