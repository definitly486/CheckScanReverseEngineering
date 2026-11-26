.class public final Li92;
.super Lk1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk1<",
        "Llc2$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Li92;

.field public static final b:Lcl4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Li92;

    invoke-direct {v0}, Lk1;-><init>()V

    sput-object v0, Li92;->a:Li92;

    sget-object v0, Lpo4;->PUBLICATION:Lpo4;

    sget-object v1, Li92$a;->f:Li92$a;

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    sput-object v0, Li92;->b:Lcl4;

    return-void
.end method


# virtual methods
.method public final a(Ldu1;Ljava/lang/String;)Lxl2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldu1;",
            "Ljava/lang/String;",
            ")",
            "Lxl2<",
            "Llc2$b;",
            ">;"
        }
    .end annotation

    sget-object p0, Li92;->b:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laj7;

    invoke-virtual {p0, p1, p2}, Laj7;->a(Ldu1;Ljava/lang/String;)Lxl2;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lux2;Ljava/lang/Object;)Lxp7;
    .locals 0

    check-cast p2, Llc2$b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Li92;->b:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laj7;

    invoke-virtual {p0, p1, p2}, Laj7;->b(Lux2;Ljava/lang/Object;)Lxp7;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lne4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lne4<",
            "Llc2$b;",
            ">;"
        }
    .end annotation

    const-class p0, Llc2$b;

    invoke-static {p0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object p0

    return-object p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Li92;->b:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Laj7;

    invoke-virtual {p0}, Laj7;->getDescriptor()Lmp7;

    move-result-object p0

    return-object p0
.end method
