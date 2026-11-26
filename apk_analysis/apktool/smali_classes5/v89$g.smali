.class public final Lv89$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv89;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv89;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation runtime Lup7;
.end annotation


# static fields
.field public static final INSTANCE:Lv89$g;

.field public static final synthetic b:Lcl4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcl4<",
            "Ldf4<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lv89$g;

    invoke-direct {v0}, Lv89$g;-><init>()V

    sput-object v0, Lv89$g;->INSTANCE:Lv89$g;

    sget-object v0, Lpo4;->PUBLICATION:Lpo4;

    sget-object v1, Lv89$g$a;->f:Lv89$g$a;

    invoke-static {v0, v1}, Lnm4;->a(Lpo4;Lll3;)Lcl4;

    move-result-object v0

    sput-object v0, Lv89$g;->b:Lcl4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V
    .locals 0

    invoke-interface {p1}, Lu89;->onCloseUpridWeb()V

    return-void
.end method

.method public final serializer()Ldf4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldf4<",
            "Lv89$g;",
            ">;"
        }
    .end annotation

    sget-object p0, Lv89$g;->b:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldf4;

    return-object p0
.end method
