.class public final synthetic Ldo7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Lbm3;


# direct methods
.method public synthetic constructor <init>(Lbm3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldo7;->b:Lbm3;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Ldo7;->b:Lbm3;

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsSortKt;->a(Lbm3;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
