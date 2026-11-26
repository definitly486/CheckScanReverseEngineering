.class public final Lv89$e;
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
    name = "e"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv89$e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V
    .locals 0

    iget-object p0, p0, Lv89$e;->b:Ljava/lang/String;

    invoke-interface {p1, p0}, Lu89;->onClosePlasticWait(Ljava/lang/String;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lv89$e;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lv89$e;

    iget-object p0, p0, Lv89$e;->b:Ljava/lang/String;

    iget-object p1, p1, Lv89$e;->b:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lv89$e;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "SuccessPlasticWait(link="

    const-string v1, ")"

    iget-object p0, p0, Lv89$e;->b:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
