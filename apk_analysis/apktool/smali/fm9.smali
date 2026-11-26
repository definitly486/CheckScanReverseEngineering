.class public final Lfm9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhfa;

.field public final b:Lhia;


# direct methods
.method public constructor <init>(Lhfa;Lhia;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfm9;->a:Lhfa;

    iput-object p2, p0, Lfm9;->b:Lhia;

    return-void
.end method
