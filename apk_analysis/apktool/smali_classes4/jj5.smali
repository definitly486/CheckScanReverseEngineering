.class public final synthetic Ljj5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ljj5;->b:I

    iput-object p1, p0, Ljj5;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Ljj5;->b:I

    iget-object p0, p0, Ljj5;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lyads/nq0;

    invoke-static {p0}, Lyads/nq0;->U(Lyads/nq0;)Lyads/zt1;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lyads/gf0;

    invoke-static {p0}, Lyads/gf0;->m(Lyads/gf0;)Lyads/y64;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/compose/ui/unit/Density;

    invoke-static {p0}, Landroidx/compose/material3/SheetState$Companion;->b(Landroidx/compose/ui/unit/Density;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lcom/google/firebase/sessions/UuidGenerator;

    invoke-static {p0}, Lcom/google/firebase/sessions/ProcessDataManagerImpl;->c(Lcom/google/firebase/sessions/UuidGenerator;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p0, Lua6;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p0, p0, Lua6;->b:Lta6;

    iget-object v1, p0, Lnb6;->y:Ljava/lang/String;

    const-string v2, "$lib"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "$lib_version"

    iget-object p0, p0, Lnb6;->z:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :pswitch_4
    check-cast p0, Lll3;

    invoke-static {p0}, Landroidx/compose/material3/NavigationDrawerKt;->z(Lll3;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
