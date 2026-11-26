.class public final synthetic Lku0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:Lnl3;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lnl3;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lku0;->b:Lnl3;

    iput-object p2, p0, Lku0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    check-cast p3, Lo22;

    iget-object p1, p0, Lku0;->b:Lnl3;

    iget-object p0, p0, Lku0;->c:Ljava/lang/Object;

    invoke-static {p1, p0, p3}, Lrq3;->a(Lnl3;Ljava/lang/Object;Lo22;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
