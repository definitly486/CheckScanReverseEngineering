.class public final Luw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luw0$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/nio/ByteBuffer;

.field public final b:Lzz5;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Lzz5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luw0;->a:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Luw0;->b:Lzz5;

    return-void
.end method


# virtual methods
.method public final a(Lpz2;)Ljava/lang/Object;
    .locals 3

    new-instance p1, Lx48;

    new-instance v0, Lvw0;

    iget-object v1, p0, Luw0;->a:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1}, Lvw0;-><init>(Ljava/nio/ByteBuffer;)V

    new-instance v2, Liy6;

    invoke-direct {v2, v0}, Liy6;-><init>(Lv48;)V

    iget-object p0, p0, Luw0;->b:Lzz5;

    iget-object p0, p0, Lzz5;->f:Lw93;

    new-instance v0, Lyw0;

    invoke-direct {v0, v1}, Lyw0;-><init>(Ljava/nio/ByteBuffer;)V

    new-instance v1, La58;

    invoke-direct {v1, v2, p0, v0}, La58;-><init>(Lwu0;Lw93;Lh24$a;)V

    const/4 p0, 0x0

    sget-object v0, Lz82;->MEMORY:Lz82;

    invoke-direct {p1, v1, p0, v0}, Lx48;-><init>(Lh24;Ljava/lang/String;Lz82;)V

    return-object p1
.end method
