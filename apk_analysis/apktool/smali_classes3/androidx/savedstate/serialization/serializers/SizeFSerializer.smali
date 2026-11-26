.class public final Landroidx/savedstate/serialization/serializers/SizeFSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldf4<",
        "Landroid/util/SizeF;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/savedstate/serialization/serializers/SizeFSerializer;

.field private static final descriptor:Lmp7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/savedstate/serialization/serializers/SizeFSerializer;

    invoke-direct {v0}, Landroidx/savedstate/serialization/serializers/SizeFSerializer;-><init>()V

    sput-object v0, Landroidx/savedstate/serialization/serializers/SizeFSerializer;->INSTANCE:Landroidx/savedstate/serialization/serializers/SizeFSerializer;

    const/4 v0, 0x0

    new-array v0, v0, [Lmp7;

    const-string v1, "android.util.SizeF"

    invoke-static {v1, v0}, Lrp7;->d(Ljava/lang/String;[Lmp7;)Lop7;

    move-result-object v0

    sput-object v0, Landroidx/savedstate/serialization/serializers/SizeFSerializer;->descriptor:Lmp7;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lud2;)Landroid/util/SizeF;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Landroidx/savedstate/serialization/SavedStateDecoder;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/savedstate/serialization/SavedStateDecoder;

    invoke-virtual {p1}, Landroidx/savedstate/serialization/SavedStateDecoder;->getSavedState$savedstate()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Landroidx/savedstate/SavedStateReader;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/savedstate/serialization/SavedStateDecoder;->getKey$savedstate()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/savedstate/SavedStateReader;->getSizeF-impl(Landroid/os/Bundle;Ljava/lang/String;)Landroid/util/SizeF;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/savedstate/serialization/serializers/SizeFSerializer;->INSTANCE:Landroidx/savedstate/serialization/serializers/SizeFSerializer;

    invoke-virtual {p0}, Landroidx/savedstate/serialization/serializers/SizeFSerializer;->getDescriptor()Lmp7;

    move-result-object p0

    invoke-interface {p0}, Lmp7;->h()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/savedstate/serialization/serializers/BuiltInSerializerKt;->decoderErrorMessage(Ljava/lang/String;Lud2;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic deserialize(Lud2;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Landroidx/savedstate/serialization/serializers/SizeFSerializer;->deserialize(Lud2;)Landroid/util/SizeF;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Landroidx/savedstate/serialization/serializers/SizeFSerializer;->descriptor:Lmp7;

    return-object p0
.end method

.method public serialize(Lux2;Landroid/util/SizeF;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Landroidx/savedstate/serialization/SavedStateEncoder;

    if-eqz p0, :cond_0

    check-cast p1, Landroidx/savedstate/serialization/SavedStateEncoder;

    invoke-virtual {p1}, Landroidx/savedstate/serialization/SavedStateEncoder;->getSavedState$savedstate()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Landroidx/savedstate/SavedStateWriter;->constructor-impl(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/savedstate/serialization/SavedStateEncoder;->getKey$savedstate()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroidx/savedstate/SavedStateWriter;->putSizeF-impl(Landroid/os/Bundle;Ljava/lang/String;Landroid/util/SizeF;)V

    return-void

    :cond_0
    sget-object p0, Landroidx/savedstate/serialization/serializers/SizeFSerializer;->INSTANCE:Landroidx/savedstate/serialization/serializers/SizeFSerializer;

    invoke-virtual {p0}, Landroidx/savedstate/serialization/serializers/SizeFSerializer;->getDescriptor()Lmp7;

    move-result-object p0

    invoke-interface {p0}, Lmp7;->h()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/savedstate/serialization/serializers/BuiltInSerializerKt;->encoderErrorMessage(Ljava/lang/String;Lux2;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic serialize(Lux2;Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p2, Landroid/util/SizeF;

    invoke-virtual {p0, p1, p2}, Landroidx/savedstate/serialization/serializers/SizeFSerializer;->serialize(Lux2;Landroid/util/SizeF;)V

    return-void
.end method
