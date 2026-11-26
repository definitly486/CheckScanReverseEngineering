.class public final synthetic Lrea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Lll3;

.field public final synthetic d:Lll3;


# direct methods
.method public synthetic constructor <init>(JLll3;Lll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lrea;->b:J

    iput-object p3, p0, Lrea;->c:Lll3;

    iput-object p4, p0, Lrea;->d:Lll3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lrea;->c:Lll3;

    iget-object v1, p0, Lrea;->d:Lll3;

    iget-wide v2, p0, Lrea;->b:J

    invoke-static {v2, v3, v0, v1}, Lyads/ut2;->a(JLll3;Lll3;)V

    return-void
.end method
