.class public final Lyads/xm4;
.super Lyads/xq4;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final b:Lyads/xm4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/xm4;

    invoke-direct {v0}, Lyads/xm4;-><init>()V

    sput-object v0, Lyads/xm4;->b:Lyads/xm4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/xq4;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lyads/xm4;->b:Lyads/xm4;

    return-object p0
.end method


# virtual methods
.method public final a()Lyads/xq4;
    .locals 0

    sget-object p0, Lyads/m95;->b:Lyads/m95;

    return-object p0
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Ordering.natural()"

    return-object p0
.end method
