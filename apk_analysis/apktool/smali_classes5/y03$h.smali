.class public final Ly03$h;
.super Ly03;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly03;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Li17;


# direct methods
.method public constructor <init>(Ljava/lang/String;Li17;)V
    .locals 0

    invoke-direct {p0}, Ly03;-><init>()V

    invoke-static {p1}, Lmo5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ly03$h;->a:Ljava/lang/String;

    iput-object p2, p0, Ly03$h;->b:Li17;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Ly03$h;->b:Li17;

    invoke-virtual {v0}, Li17;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "~="

    const-string v2, "]"

    const-string v3, "["

    iget-object p0, p0, Ly03$h;->a:Ljava/lang/String;

    invoke-static {v3, p0, v1, v0, v2}, Ln2;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
