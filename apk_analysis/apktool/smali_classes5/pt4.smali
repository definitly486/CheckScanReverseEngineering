.class public final Lpt4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldf4<",
        "Ljt4;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lpt4;

.field public static final b:Lfg6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lpt4;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lpt4;->a:Lpt4;

    const-string v0, "kotlinx.datetime.LocalDateTime"

    sget-object v1, Ldg6$i;->a:Ldg6$i;

    invoke-static {v0, v1}, Lrp7;->a(Ljava/lang/String;Ldg6;)Lfg6;

    move-result-object v0

    sput-object v0, Lpt4;->b:Lfg6;

    return-void
.end method


# virtual methods
.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ljt4;->Companion:Ljt4$a;

    invoke-interface {p1}, Lud2;->decodeString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljt4$b;->a:Lkt4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xc

    invoke-static {p1, p0}, Lex0;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object p0

    new-instance p1, Ljt4;

    invoke-direct {p1, p0}, Ljt4;-><init>(Ljava/time/LocalDateTime;)V
    :try_end_0
    .catch Ljava/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lkotlinx/datetime/DateTimeFormatException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lpt4;->b:Lfg6;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljt4;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljt4;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lux2;->encodeString(Ljava/lang/String;)V

    return-void
.end method
