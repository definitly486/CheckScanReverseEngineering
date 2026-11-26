.class public final synthetic Ldg1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Ljg1;

.field public final synthetic c:Lkg1;


# direct methods
.method public synthetic constructor <init>(Ljg1;Lkg1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldg1;->b:Ljg1;

    iput-object p2, p0, Ldg1;->c:Lkg1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    iget-object v0, p0, Ldg1;->b:Ljg1;

    iget-object v0, v0, Ljg1;->b:Lhg1;

    iget-object p0, p0, Ldg1;->c:Lkg1;

    invoke-virtual {v0, p1, p0}, Landroidx/room/EntityInsertAdapter;->insertAndReturnId(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
