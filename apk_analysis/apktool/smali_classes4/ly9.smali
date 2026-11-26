.class public final synthetic Lly9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/my/tracker/obfuscated/i0;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:J


# direct methods
.method public synthetic constructor <init>(Lcom/my/tracker/obfuscated/i0;Ljava/lang/String;Ljava/lang/String;JJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lly9;->b:Lcom/my/tracker/obfuscated/i0;

    iput-object p2, p0, Lly9;->c:Ljava/lang/String;

    iput-object p3, p0, Lly9;->d:Ljava/lang/String;

    iput-wide p4, p0, Lly9;->e:J

    iput-wide p6, p0, Lly9;->f:J

    iput-wide p8, p0, Lly9;->g:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-wide v5, p0, Lly9;->f:J

    iget-wide v7, p0, Lly9;->g:J

    iget-object v0, p0, Lly9;->b:Lcom/my/tracker/obfuscated/i0;

    iget-object v1, p0, Lly9;->c:Ljava/lang/String;

    iget-object v2, p0, Lly9;->d:Ljava/lang/String;

    iget-wide v3, p0, Lly9;->e:J

    invoke-static/range {v0 .. v8}, Lcom/my/tracker/obfuscated/i0;->h(Lcom/my/tracker/obfuscated/i0;Ljava/lang/String;Ljava/lang/String;JJJ)V

    return-void
.end method
