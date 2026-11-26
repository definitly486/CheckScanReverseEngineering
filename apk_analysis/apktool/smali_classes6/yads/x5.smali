.class public final Lyads/x5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/yi4;


# instance fields
.field public final a:Lyads/sz2;


# direct methods
.method public constructor <init>(Lyads/sz2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/x5;->a:Lyads/sz2;

    return-void
.end method


# virtual methods
.method public final a(Lyads/we3;)V
    .locals 0

    iget-object p0, p0, Lyads/x5;->a:Lyads/sz2;

    iget-object p1, p1, Lyads/we3;->a:Ljava/util/LinkedHashSet;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
