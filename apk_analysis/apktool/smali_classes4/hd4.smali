.class public final Lhd4;
.super Lpc4;
.source "SourceFile"


# static fields
.field public static final b:Lhd4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhd4;

    invoke-direct {v0}, Lhd4;-><init>()V

    sput-object v0, Lhd4;->b:Lhd4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lpc4;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p0, p1, Lhd4;

    return p0
.end method

.method public final hashCode()I
    .locals 0

    const-class p0, Lhd4;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
