.class public Lyads/qj5;
.super Lyads/i20;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lyads/xx4;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lyads/i20;-><init>(Ljava/util/Set;Lyads/xx4;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lyads/tj5;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    invoke-static {p0}, Lyads/tj5;->a(Ljava/util/Set;)I

    move-result p0

    return p0
.end method
