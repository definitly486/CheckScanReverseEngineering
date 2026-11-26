.class public final Lyads/ft2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/dt2;


# static fields
.field public static final a:Lyads/ft2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/ft2;

    invoke-direct {v0}, Lyads/ft2;-><init>()V

    sput-object v0, Lyads/ft2;->a:Lyads/ft2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lyads/ft2;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final getValue()Landroid/os/Parcelable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    const p0, -0x58fd7535

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "ExtrasNullParcelable"

    return-object p0
.end method
