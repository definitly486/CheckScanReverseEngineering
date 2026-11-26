.class public final Lyads/p36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/n36;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    const/high16 p0, -0x1000000

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 0

    .line 7
    instance-of p0, p1, Ljava/lang/Integer;

    return p0
.end method
