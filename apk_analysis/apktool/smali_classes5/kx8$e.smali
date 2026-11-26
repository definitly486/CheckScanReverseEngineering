.class public final enum Lkx8$e;
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

    const-string v0, "RawtextLessthanSign"

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Ljx8;Lea1;)V
    .locals 0

    const/16 p0, 0x2f

    invoke-virtual {p2, p0}, Lea1;->q0(C)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljx8;->e()V

    sget-object p0, Lkx8;->RawtextEndTagOpen:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->a(Lkx8;)V

    return-void

    :cond_0
    const/16 p0, 0x3c

    invoke-virtual {p1, p0}, Ljx8;->f(C)V

    sget-object p0, Lkx8;->Rawtext:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void
.end method
