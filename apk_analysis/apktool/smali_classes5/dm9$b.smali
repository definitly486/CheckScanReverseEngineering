.class public final Ldm9$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldm9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/nio/ByteBuffer;

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ldm9$b;->a:I

    iput p3, p0, Ldm9$b;->b:I

    iput-object p1, p0, Ldm9$b;->c:Ljava/nio/ByteBuffer;

    iput p4, p0, Ldm9$b;->d:I

    iput p5, p0, Ldm9$b;->e:I

    return-void
.end method
