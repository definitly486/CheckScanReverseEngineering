.class public final Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Login"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 16
    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-direct {p0, v0, v0, v1}, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    move-object p2, v1

    :cond_1
    const/4 p3, 0x0

    invoke-direct {p0, p1, p3, p2}, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;->b:Ljava/lang/String;

    .line 19
    iput-boolean p2, p0, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;->c:Z

    .line 20
    iput-object p3, p0, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;

    iget-object v1, p0, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;->c:Z

    iget-boolean v3, p1, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;->c:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;->d:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-boolean v3, p0, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;->c:Z

    invoke-static {v1, v2, v3}, Ltg;->c(IIZ)I

    move-result v1

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;->d:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", showSkipButton="

    const-string v1, ", afterEvent="

    const-string v2, "Login(inviteCode="

    iget-object v3, p0, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;->b:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;->c:Z

    invoke-static {v2, v3, v0, v1, v4}, Lp2;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;->d:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lme0;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;->c:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$Login;->d:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
