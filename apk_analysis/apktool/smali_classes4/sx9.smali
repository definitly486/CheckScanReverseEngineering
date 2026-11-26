.class public final synthetic Lsx9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/tracker/obfuscated/i0;

.field public final synthetic c:I

.field public final synthetic d:[B

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:J

.field public final synthetic h:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/obfuscated/i0;I[BZZJLjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsx9;->b:Lcom/my/tracker/obfuscated/i0;

    iput p2, p0, Lsx9;->c:I

    iput-object p3, p0, Lsx9;->d:[B

    iput-boolean p4, p0, Lsx9;->e:Z

    iput-boolean p5, p0, Lsx9;->f:Z

    iput-wide p6, p0, Lsx9;->g:J

    iput-object p8, p0, Lsx9;->h:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-wide v5, p0, Lsx9;->g:J

    iget-object v7, p0, Lsx9;->h:Ljava/lang/Runnable;

    iget-object v0, p0, Lsx9;->b:Lcom/my/tracker/obfuscated/i0;

    iget v1, p0, Lsx9;->c:I

    iget-object v2, p0, Lsx9;->d:[B

    iget-boolean v3, p0, Lsx9;->e:Z

    iget-boolean v4, p0, Lsx9;->f:Z

    invoke-static/range {v0 .. v7}, Lcom/my/tracker/obfuscated/i0;->E(Lcom/my/tracker/obfuscated/i0;I[BZZJLjava/lang/Runnable;)V

    return-void
.end method
