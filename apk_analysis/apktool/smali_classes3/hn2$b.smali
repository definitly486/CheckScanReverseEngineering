.class public final Lhn2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhn2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhn2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lhn2$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhn2$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhn2$b;->a:Lhn2$b;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lhn2$b;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const p0, -0x7ccbb3bb

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Undefined"

    return-object p0
.end method
