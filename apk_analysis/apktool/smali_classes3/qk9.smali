.class public final synthetic Lqk9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqk9;->b:Ljava/lang/String;

    iput p2, p0, Lqk9;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lqk9;->c:I

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    iget-object p0, p0, Lqk9;->b:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Landroidx/work/impl/model/WorkSpecDao_Impl;->A(Ljava/lang/String;ILandroidx/sqlite/SQLiteConnection;)Lj59;

    move-result-object p0

    return-object p0
.end method
