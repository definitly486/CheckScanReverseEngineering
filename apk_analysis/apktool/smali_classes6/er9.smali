.class public final synthetic Ler9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:Lyads/ne;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lyads/ne;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ler9;->b:Lyads/ne;

    iput-object p2, p0, Ler9;->c:Ljava/lang/String;

    iput-wide p3, p0, Ler9;->d:J

    iput-wide p5, p0, Ler9;->e:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 7

    iget-wide v4, p0, Ler9;->e:J

    move-object v6, p1

    check-cast v6, Lyads/pe;

    iget-object v0, p0, Ler9;->b:Lyads/ne;

    iget-object v1, p0, Ler9;->c:Ljava/lang/String;

    iget-wide v2, p0, Ler9;->d:J

    invoke-static/range {v0 .. v6}, Lyads/cj0;->b(Lyads/ne;Ljava/lang/String;JJLyads/pe;)V

    return-void
.end method
