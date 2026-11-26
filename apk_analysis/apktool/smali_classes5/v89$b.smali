.class public final Lv89$b;
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
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv89$b$a;,
        Lv89$b$b;
    }
.end annotation

.annotation runtime Lup7;
.end annotation


# static fields
.field public static final Companion:Lv89$b$b;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv89$b$b;

    invoke-direct {v0}, Lv89$b$b;-><init>()V

    sput-object v0, Lv89$b;->Companion:Lv89$b$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "reject_inappropriate.checkscan.org/"

    iput-object v0, p0, Lv89$b;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lul2;
    .end annotation

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lv89$b;->b:Ljava/lang/String;

    return-void

    :cond_0
    sget-object p0, Lv89$b$a;->a:Lv89$b$a;

    invoke-virtual {p0}, Lv89$b$a;->getDescriptor()Lmp7;

    move-result-object p0

    invoke-static {p0, p1, v1}, Lr96;->f(Lmp7;II)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final c(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V
    .locals 0

    iget-object p0, p0, Lv89$b;->b:Ljava/lang/String;

    invoke-interface {p1, p0}, Lu89;->onCloseReject(Ljava/lang/String;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lv89$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lv89$b;

    iget-object p0, p0, Lv89$b;->b:Ljava/lang/String;

    iget-object p1, p1, Lv89$b;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lv89$b;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ErrorReject(link="

    const-string v1, ")"

    iget-object p0, p0, Lv89$b;->b:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
