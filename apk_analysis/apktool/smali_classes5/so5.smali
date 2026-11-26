.class public final Lso5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# static fields
.field public static final a:Lso5;

.field public static final b:Lro5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lso5;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lso5;->a:Lso5;

    sget-object v0, Lro5;->a:Lro5;

    sput-object v0, Lso5;->b:Lro5;

    return-void
.end method


# virtual methods
.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lkotlinx/serialization/SerializationException;

    const-string p1, "\'kotlin.Nothing\' does not have instances"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lso5;->b:Lro5;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lkotlinx/serialization/SerializationException;

    const-string p1, "\'kotlin.Nothing\' cannot be serialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
