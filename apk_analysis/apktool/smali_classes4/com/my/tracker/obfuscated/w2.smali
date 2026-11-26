.class public final Lcom/my/tracker/obfuscated/w2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:J

.field final b:[B


# direct methods
.method public constructor <init>(J[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/my/tracker/obfuscated/w2;->a:J

    iput-object p3, p0, Lcom/my/tracker/obfuscated/w2;->b:[B

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/my/tracker/obfuscated/w2;->a:J

    return-wide v0
.end method

.method public b()[B
    .locals 0

    iget-object p0, p0, Lcom/my/tracker/obfuscated/w2;->b:[B

    return-object p0
.end method
