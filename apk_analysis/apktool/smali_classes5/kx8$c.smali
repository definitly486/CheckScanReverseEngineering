.class public final enum Lkx8$c;
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

    const-string v0, "RCDATAEndTagOpen"

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Ljx8;Lea1;)V
    .locals 1

    invoke-virtual {p2}, Lea1;->u0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljx8;->d(Z)Lgx8$h;

    iget-object p0, p1, Ljx8;->j:Lgx8$h;

    invoke-virtual {p2}, Lea1;->X()C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgx8$h;->i(Ljava/lang/String;)V

    iget-object p0, p1, Ljx8;->f:Lm54;

    invoke-virtual {p2}, Lea1;->X()C

    move-result p2

    invoke-virtual {p0, p2}, Lm54;->a(C)V

    sget-object p0, Lkx8;->RCDATAEndTagName:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->a(Lkx8;)V

    return-void

    :cond_0
    const-string p0, "</"

    invoke-virtual {p1, p0}, Ljx8;->h(Ljava/lang/String;)V

    sget-object p0, Lkx8;->Rcdata:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void
.end method
