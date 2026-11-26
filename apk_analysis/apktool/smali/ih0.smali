.class public final synthetic Lih0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic c:Landroidx/compose/ui/unit/LayoutDirection;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroidx/compose/ui/unit/Density;

.field public final synthetic f:Landroidx/compose/ui/text/font/FontFamily$Resolver;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;Ljava/lang/String;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lih0;->b:Landroidx/compose/ui/text/TextStyle;

    iput-object p2, p0, Lih0;->c:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object p3, p0, Lih0;->d:Ljava/lang/String;

    iput-object p4, p0, Lih0;->e:Landroidx/compose/ui/unit/Density;

    iput-object p5, p0, Lih0;->f:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lih0;->e:Landroidx/compose/ui/unit/Density;

    iget-object v1, p0, Lih0;->f:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iget-object v2, p0, Lih0;->b:Landroidx/compose/ui/text/TextStyle;

    iget-object v3, p0, Lih0;->c:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object p0, p0, Lih0;->d:Ljava/lang/String;

    invoke-static {v2, v3, p0, v0, v1}, Landroidx/compose/foundation/text/BasicText_androidKt;->b(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;Ljava/lang/String;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    return-void
.end method
