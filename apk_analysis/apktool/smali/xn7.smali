.class public final synthetic Lxn7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Lwn7;


# direct methods
.method public synthetic constructor <init>(Lwn7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxn7;->b:Lwn7;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lxn7;->b:Lwn7;

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->b(Lwn7;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
