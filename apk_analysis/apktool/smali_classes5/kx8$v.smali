.class public final enum Lkx8$v;
.super Lkx8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkx8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "CharacterReferenceInData"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Ljx8;Lea1;)V
    .locals 3

    sget-object p0, Lkx8;->Data:Lkx8;

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljx8;->c(Ljava/lang/Character;Z)[I

    move-result-object p2

    if-nez p2, :cond_0

    const/16 p2, 0x26

    invoke-virtual {p1, p2}, Ljx8;->f(C)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    array-length v2, p2

    invoke-direct {v1, p2, v0, v2}, Ljava/lang/String;-><init>([III)V

    invoke-virtual {p1, v1}, Ljx8;->h(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void
.end method
