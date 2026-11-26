.class public final Lpw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu83;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpw0$a;
    }
.end annotation


# instance fields
.field public final a:[B

.field public final b:Lzz5;


# direct methods
.method public constructor <init>([BLzz5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpw0;->a:[B

    iput-object p2, p0, Lpw0;->b:Lzz5;

    return-void
.end method


# virtual methods
.method public final a(Lpz2;)Ljava/lang/Object;
    .locals 3

    new-instance p1, Lbu0;

    invoke-direct {p1}, Lbu0;-><init>()V

    iget-object v0, p0, Lpw0;->a:[B

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Lbu0;->write([BII)V

    iget-object p0, p0, Lpw0;->b:Lzz5;

    iget-object p0, p0, Lzz5;->f:Lw93;

    new-instance v0, La58;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, La58;-><init>(Lwu0;Lw93;Lh24$a;)V

    sget-object p0, Lz82;->MEMORY:Lz82;

    new-instance p1, Lx48;

    invoke-direct {p1, v0, v1, p0}, Lx48;-><init>(Lh24;Ljava/lang/String;Lz82;)V

    return-object p1
.end method
