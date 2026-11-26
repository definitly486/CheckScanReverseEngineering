.class public final Ly03$m0;
.super Ly03;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly03;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m0"
.end annotation


# instance fields
.field public final a:Li17;


# direct methods
.method public constructor <init>(Li17;)V
    .locals 0

    invoke-direct {p0}, Ly03;-><init>()V

    iput-object p1, p0, Ly03$m0;->a:Li17;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Ly03$m0;->a:Li17;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, ":matchesWholeText(%s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
