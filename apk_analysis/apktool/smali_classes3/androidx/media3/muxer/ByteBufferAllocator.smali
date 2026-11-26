.class public interface abstract Landroidx/media3/muxer/ByteBufferAllocator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Landroidx/media3/muxer/ByteBufferAllocator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/muxer/ByteBufferAllocator;->DEFAULT:Landroidx/media3/muxer/ByteBufferAllocator;

    return-void
.end method


# virtual methods
.method public abstract allocate(I)Ljava/nio/ByteBuffer;
.end method
