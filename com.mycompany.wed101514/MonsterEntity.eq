
/*
 * MonsterEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class MonsterEntity : SEEntity
{
	SESprite chase;
	int w;
	int h;
	int wp;
	int hp;
	int mx;
	int my;
	int sx;
	int sy;
	
	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w=get_scene_width();
		h=get_scene_height();
		rsc.prepare_image("shark", "shark", 0.15*w, 0.15*h);
		chase = add_sprite_for_image(SEImage.for_resource("shark"));
		chase.move(Math.random(0,w), Math.random(0,h));
		wp = chase.get_width();
		hp = chase.get_height();
		sx = Math.random(5,70);
		sy = Math.random(5,70);
		}

	public void tick(TimeVal now, double delta) {
		base.tick(now, delta);
		mx = chase.get_x();
		my = chase.get_y();
		chase.move(mx+(MainScene.x-mx)/100, my+(MainScene.y-my)/100);
	}
}
