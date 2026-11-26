.class public abstract Lyads/xy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/xx4;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(C)Z
.end method

.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lyads/xy;->a(C)Z

    move-result p0

    return p0
.end method
