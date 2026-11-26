.class public Lcya;
.super Lo4b;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lyxa;


# direct methods
.method public constructor <init>(Lyxa;)V
    .locals 0

    iput-object p1, p0, Lcya;->b:Lyxa;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Laxa;

    iget-object p0, p0, Lcya;->b:Lyxa;

    invoke-direct {v0, p0}, Lhxa;-><init>(Lyxa;)V

    return-object v0
.end method
