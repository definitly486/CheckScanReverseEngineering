.class public final Lyads/mv5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/et4;


# instance fields
.field public final b:Lyads/et4;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lyads/et4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/mv5;->b:Lyads/et4;

    iput-object p1, p0, Lyads/mv5;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lyads/mv5;->b:Lyads/et4;

    iget-object p0, p0, Lyads/mv5;->c:Ljava/lang/String;

    invoke-interface {v0, p1, p0}, Lyads/et4;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method
