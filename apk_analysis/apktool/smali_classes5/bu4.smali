.class public final Lbu4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldf4<",
        "Lut4;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lbu4;

.field public static final b:Lfg6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbu4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lbu4;->a:Lbu4;

    const-string v0, "kotlinx.datetime.LocalTime"

    sget-object v1, Ldg6$i;->a:Ldg6$i;

    invoke-static {v0, v1}, Lrp7;->a(Ljava/lang/String;Ldg6;)Lfg6;

    move-result-object v0

    sput-object v0, Lbu4;->b:Lfg6;

    return-void
.end method


# virtual methods
.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lut4;->Companion:Lut4$a;

    invoke-interface {p1}, Lud2;->decodeString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lau4;->a:Lfh8;

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvt4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvt4;

    if-ne v1, p0, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object p0

    new-instance p1, Lut4;

    invoke-direct {p1, p0}, Lut4;-><init>(Ljava/time/LocalTime;)V
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lkotlinx/datetime/DateTimeFormatException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    invoke-virtual {v1, p1}, Ld0;->a(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lut4;

    return-object p0
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lbu4;->b:Lfg6;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lut4;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lut4;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lux2;->encodeString(Ljava/lang/String;)V

    return-void
.end method
