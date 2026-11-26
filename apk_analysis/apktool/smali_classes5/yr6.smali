.class public abstract Lyr6;
.super Les6;
.source "SourceFile"

# interfaces
.implements Laf4;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Les6;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Les6;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 5
    invoke-direct/range {p0 .. p5}, Les6;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public computeReflected()Lme4;
    .locals 1

    sget-object v0, Lx07;->a:La17;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public getDelegate()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Les6;->getReflected()Lze4;

    move-result-object p0

    check-cast p0, Laf4;

    invoke-interface {p0}, Laf4;->getDelegate()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getGetter()Laf4$a;
    .locals 0

    invoke-virtual {p0}, Les6;->getReflected()Lze4;

    move-result-object p0

    check-cast p0, Laf4;

    invoke-interface {p0}, Laf4;->getGetter()Laf4$a;

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getGetter()Lze4$a;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lyr6;->getGetter()Laf4$a;

    const/4 p0, 0x0

    return-object p0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 0

    invoke-interface {p0}, Laf4;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
