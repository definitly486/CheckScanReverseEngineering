.class public final Lyads/dn3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ri6;


# instance fields
.field public final a:Lyads/ws5;

.field public final b:Lxb4;


# direct methods
.method public constructor <init>(Lyads/ws5;Lxb4;Lyads/mi6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/dn3;->a:Lyads/ws5;

    iput-object p2, p0, Lyads/dn3;->b:Lxb4;

    return-void
.end method


# virtual methods
.method public final a(Lyads/en4;)Ljava/lang/Object;
    .locals 4

    new-instance v0, Lyads/a95;

    iget v1, p1, Lyads/en4;->a:I

    new-instance v2, Lyads/b95;

    iget-object v3, p1, Lyads/en4;->b:[B

    invoke-direct {v2, v3}, Lyads/b95;-><init>([B)V

    iget-object p1, p1, Lyads/en4;->c:Ljava/util/Map;

    if-nez p1, :cond_0

    sget-object p1, Lmx2;->b:Lmx2;

    :cond_0
    invoke-direct {v0, v1, v2, p1}, Lyads/a95;-><init>(ILyads/b95;Ljava/util/Map;)V

    iget-object p1, p0, Lyads/dn3;->a:Lyads/ws5;

    invoke-virtual {p1, v0}, Lyads/ws5;->a(Lyads/a95;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lyads/dn3;->b:Lxb4;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyads/dg0;->Companion:Lyads/cg0;

    invoke-virtual {v0}, Lyads/cg0;->serializer()Ldf4;

    move-result-object v0

    check-cast v0, Lxl2;

    invoke-virtual {p0, v0, p1}, Lxb4;->a(Lxl2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/dg0;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
