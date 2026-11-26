.class public final Lo49;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldf4<",
        "Lk49;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo49;

.field public static final b:Li54;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo49;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo49;->a:Lo49;

    const-string v0, "kotlin.UInt"

    sget-object v1, Lz74;->a:Lz74;

    invoke-static {v0, v1}, Lk54;->a(Ljava/lang/String;Ldf4;)Li54;

    move-result-object v0

    sput-object v0, Lo49;->b:Li54;

    return-void
.end method


# virtual methods
.method public final deserialize(Lud2;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lo49;->b:Li54;

    invoke-interface {p1, p0}, Lud2;->decodeInline(Lmp7;)Lud2;

    move-result-object p0

    invoke-interface {p0}, Lud2;->decodeInt()I

    move-result p0

    new-instance p1, Lk49;

    invoke-direct {p1, p0}, Lk49;-><init>(I)V

    return-object p1
.end method

.method public final getDescriptor()Lmp7;
    .locals 0

    sget-object p0, Lo49;->b:Li54;

    return-object p0
.end method

.method public final serialize(Lux2;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lk49;

    iget p0, p2, Lk49;->b:I

    sget-object p2, Lo49;->b:Li54;

    invoke-interface {p1, p2}, Lux2;->encodeInline(Lmp7;)Lux2;

    move-result-object p1

    invoke-interface {p1, p0}, Lux2;->encodeInt(I)V

    return-void
.end method
