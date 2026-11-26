.class public final enum Lkx8$f;
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

    const-string v0, "RawtextEndTagOpen"

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Ljx8;Lea1;)V
    .locals 1

    sget-object p0, Lkx8;->RawtextEndTagName:Lkx8;

    sget-object v0, Lkx8;->Rawtext:Lkx8;

    invoke-virtual {p2}, Lea1;->u0()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljx8;->d(Z)Lgx8$h;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_0
    const-string p0, "</"

    invoke-virtual {p1, p0}, Ljx8;->h(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljx8;->o(Lkx8;)V

    return-void
.end method
