.class final Landroidx/compose/ui/text/AnnotationSpan;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final key:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/AnnotationSpan;->key:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/ui/text/AnnotationSpan;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/AnnotationSpan;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/AnnotationSpan;->value:Ljava/lang/String;

    return-object p0
.end method
