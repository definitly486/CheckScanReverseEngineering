.class public final synthetic Luea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Lyads/uw5;

.field public final synthetic d:Lq07;

.field public final synthetic e:J

.field public final synthetic f:Ltea;


# direct methods
.method public synthetic constructor <init>(JLyads/uw5;Lq07;JLtea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Luea;->b:J

    iput-object p3, p0, Luea;->c:Lyads/uw5;

    iput-object p4, p0, Luea;->d:Lq07;

    iput-wide p5, p0, Luea;->e:J

    iput-object p7, p0, Luea;->f:Ltea;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget-wide v4, p0, Luea;->e:J

    iget-object v6, p0, Luea;->f:Ltea;

    iget-wide v0, p0, Luea;->b:J

    iget-object v2, p0, Luea;->c:Lyads/uw5;

    iget-object v3, p0, Luea;->d:Lq07;

    invoke-static/range {v0 .. v6}, Lyads/uw5;->a(JLyads/uw5;Lq07;JLll3;)Lj59;

    move-result-object p0

    return-object p0
.end method
