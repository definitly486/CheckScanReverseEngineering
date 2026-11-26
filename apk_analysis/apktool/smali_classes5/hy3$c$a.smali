.class public final Lhy3$c$a;
.super Ljl8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhy3$c;->c(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lhy3;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lhy3;II)V
    .locals 0

    iput-object p2, p0, Lhy3$c$a;->e:Lhy3;

    iput p3, p0, Lhy3$c$a;->f:I

    iput p4, p0, Lhy3$c$a;->g:I

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Ljl8;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-object v0, p0, Lhy3$c$a;->e:Lhy3;

    iget v1, p0, Lhy3$c$a;->f:I

    iget p0, p0, Lhy3$c$a;->g:I

    :try_start_0
    iget-object v2, v0, Lhy3;->x:Lwy3;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p0, v3}, Lwy3;->m0(IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lp03;->PROTOCOL_ERROR:Lp03;

    invoke-virtual {v0, v1, v1, p0}, Lhy3;->a(Lp03;Lp03;Ljava/io/IOException;)V

    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
