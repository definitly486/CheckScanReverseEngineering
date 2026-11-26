.class public final Lhc3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldf4<",
        "Lgc3;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lhc3;

.field public static final b:Lfg6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhc3;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lhc3;->a:Lhc3;

    const-string v0, "kotlinx.datetime.FixedOffsetTimeZone"

    sget-object v1, Ldg6$i;->a:Ldg6$i;

    invoke-static {v0, v1}, Lrp7;->a(Ljava/lang/String;Ldg6;)Lfg6;

    move-result-object v0

    sput-object v0, Lhc3;->b:Lfg6;

    return-void
.end method


# virtual methods
.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lsv8;->Companion:Lsv8$a;

    invoke-interface {p1}, Lud2;->decodeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lsv8$a;->a(Ljava/lang/String;)Lsv8;

    move-result-object p0

    instance-of p1, p0, Lgc3;

    if-eqz p1, :cond_0

    check-cast p0, Lgc3;

    return-object p0

    :cond_0
    new-instance p1, Lkotlinx/serialization/SerializationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Timezone identifier \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' does not correspond to a fixed-offset timezone"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lhc3;->b:Lfg6;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lgc3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p2, Lsv8;->a:Ljava/time/ZoneId;

    invoke-virtual {p0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lux2;->encodeString(Ljava/lang/String;)V

    return-void
.end method
