.class public final synthetic Lo88;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lnl3;

.field public final synthetic c:Landroidx/work/impl/WorkDatabase;


# direct methods
.method public synthetic constructor <init>(Lnl3;Landroidx/work/impl/WorkDatabase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo88;->b:Lnl3;

    iput-object p2, p0, Lo88;->c:Landroidx/work/impl/WorkDatabase;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo88;->b:Lnl3;

    iget-object p0, p0, Lo88;->c:Landroidx/work/impl/WorkDatabase;

    invoke-static {v0, p0}, Landroidx/work/impl/utils/StatusRunnable;->e(Lnl3;Landroidx/work/impl/WorkDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
