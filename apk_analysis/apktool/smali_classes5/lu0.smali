.class public final synthetic Llu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lmu0;

.field public final synthetic d:Lbm7;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lmu0;Lbm7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llu0;->b:Ljava/lang/Object;

    iput-object p2, p0, Llu0;->c:Lmu0;

    iput-object p3, p0, Llu0;->d:Lbm7;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    check-cast p3, Lo22;

    sget-object p1, Lsu0;->l:Lbh8;

    iget-object p2, p0, Llu0;->b:Ljava/lang/Object;

    if-eq p2, p1, :cond_0

    iget-object p1, p0, Llu0;->c:Lmu0;

    iget-object p1, p1, Lmu0;->c:Lnl3;

    iget-object p0, p0, Llu0;->d:Lbm7;

    invoke-interface {p0}, Lbm7;->getContext()Lo22;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lrq3;->a(Lnl3;Ljava/lang/Object;Lo22;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
