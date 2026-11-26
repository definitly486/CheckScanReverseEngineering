.class public final synthetic Ltcc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkd8;


# instance fields
.field public final synthetic b:Lkd8;


# direct methods
.method public synthetic constructor <init>(Lkd8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltcc;->b:Lkd8;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Ltcc;->b:Lkd8;

    invoke-interface {p0}, Lkd8;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lxr4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x2710

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Lcdc;->b:Lcdc;

    invoke-interface {p0, v3, v0, v1, v2}, Lxr4;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lnd5$b$a;

    move-result-object p0

    return-object p0
.end method
