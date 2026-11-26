.class public final synthetic Lc3a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/ne6;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lyads/ne6;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc3a;->b:Lyads/ne6;

    iput-object p2, p0, Lc3a;->c:Ljava/lang/String;

    iput-wide p3, p0, Lc3a;->d:J

    iput-wide p5, p0, Lc3a;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-wide v2, p0, Lc3a;->d:J

    iget-wide v4, p0, Lc3a;->e:J

    iget-object v0, p0, Lc3a;->b:Lyads/ne6;

    iget-object v1, p0, Lc3a;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lyads/ne6;->b(Ljava/lang/String;JJ)V

    return-void
.end method
