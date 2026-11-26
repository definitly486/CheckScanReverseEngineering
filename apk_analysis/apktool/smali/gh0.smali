.class public final synthetic Lgh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic c:Landroidx/compose/ui/unit/LayoutDirection;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Landroidx/compose/ui/text/AnnotatedString;

.field public final synthetic f:Landroidx/compose/ui/unit/Density;

.field public final synthetic g:Landroidx/compose/ui/text/font/FontFamily$Resolver;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;Ljava/util/List;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgh0;->b:Landroidx/compose/ui/text/TextStyle;

    iput-object p2, p0, Lgh0;->c:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object p3, p0, Lgh0;->d:Ljava/util/List;

    iput-object p4, p0, Lgh0;->e:Landroidx/compose/ui/text/AnnotatedString;

    iput-object p5, p0, Lgh0;->f:Landroidx/compose/ui/unit/Density;

    iput-object p6, p0, Lgh0;->g:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v4, p0, Lgh0;->f:Landroidx/compose/ui/unit/Density;

    iget-object v5, p0, Lgh0;->g:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iget-object v0, p0, Lgh0;->b:Landroidx/compose/ui/text/TextStyle;

    iget-object v1, p0, Lgh0;->c:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v2, p0, Lgh0;->d:Ljava/util/List;

    iget-object v3, p0, Lgh0;->e:Landroidx/compose/ui/text/AnnotatedString;

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/text/BasicText_androidKt;->a(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;Ljava/util/List;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    return-void
.end method
